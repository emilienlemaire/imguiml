open Imguiml

let bigarray_create k len = Bigarray.(Array1.create k c_layout len)

let string_of_bigarray ba =
  let len = Bigarray.Array1.dim ba in
  let b = Buffer.create (len - 1) in
  try
    for i = 0 to len - 1 do
      if ba.{i} = '\x00' then raise Exit else Buffer.add_char b ba.{i}
    done;
    raise Exit
  with Exit -> Buffer.contents b

let _get_string_ len f =
  let a = bigarray_create Bigarray.char len in
  f a;
  string_of_bigarray a

open Ctypes

let null typ = Ctypes.from_voidp typ Ctypes.null

let%expect_test "imgui" =
  Format.printf "Creating context: %s@\n" (Bindings.get_version ());
  assert (
    Bindings.debug_check_version_and_data_layout (Bindings.get_version ())
      (sizeof Types.Io.t) (sizeof Types.Style.t) (sizeof Types.Vec2.t)
      (sizeof Types.Vec4.t) (sizeof Types.DrawVert.t) (sizeof Types.draw_idx_t));
  let _ = Bindings.create_context (null Types.FontAtlas.t) in
  let io = Bindings.get_io () in
  let text_pixels = allocate (ptr int) (null int) in
  let text_w = allocate int 0 in
  let text_h = allocate int 0 in
  Bindings.ImFontAtlas.get_tex_data_as_rgb_a32
    !@(io |-> Types.Io.fonts)
    text_pixels text_w text_h (null int);
  for n = 0 to 20 do
    Format.printf "New frame: %d@\n" n;
    let display_size = Bindings.ImVec2.nil () in
    display_size |-> Types.Vec2.x <-@ 1920.;
    display_size |-> Types.Vec2.y <-@ 1080.;
    io |-> Types.Io.display_size <-@ !@display_size;
    io |-> Types.Io.delta_time <-@ 1. /. 60.;
    Bindings.new_frame ();
    let _ =
      Bindings.begin_ "Main window" (null bool)
        (Int64.to_int Types.WindowFlags.no_title_bar)
    in
    let f = allocate float 0.0 in
    Bindings.text "Hello World!";
    let _ = Bindings.slider_float "float" f 0. 1. "%.3f" 0 in
    Bindings.text
      (Format.sprintf "Application average %.3f ms/fame (%.1f FPS)"
         (1000. /. !@(io |-> Types.Io.framerate))
         !@(io |-> Types.Io.framerate));

    Bindings.end_ ();
    Bindings.show_demo_window (null bool);
    Bindings.render ()
  done;
  Format.printf "%u@\n" (Int64.to_int Types.WindowFlags.no_title_bar);
  Format.printf "size: %d@\n" (sizeof Types.WindowFlags.t);
  Format.printf "DestroyContext()\n";
  Bindings.destroy_context (null Types.Context.t);
  [%expect
    {|
    Creating context: 1.90.6
    New frame: 0
    New frame: 1
    New frame: 2
    New frame: 3
    New frame: 4
    New frame: 5
    New frame: 6
    New frame: 7
    New frame: 8
    New frame: 9
    New frame: 10
    New frame: 11
    New frame: 12
    New frame: 13
    New frame: 14
    New frame: 15
    New frame: 16
    New frame: 17
    New frame: 18
    New frame: 19
    New frame: 20
    1
    size: 4
    DestroyContext()
    |}]
