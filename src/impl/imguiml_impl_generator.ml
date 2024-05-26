let c_headers =
  "\n\
   #ifndef CIMGUI_DEFINE_ENUMS_AND_STRUCTS\n\
   #define CIMGUI_DEFINE_ENUMS_AND_STRUCTS\n\
   #endif\n\
   #include <GL/glew.h>\n\
   #include \"cimgui.h\"\n\
   #define CIMGUI_USE_OPENGL3\n\
   #define CIMGUI_USE_GLFW\n\
   #include \"cimgui_impl.h\""

let main () =
  let ml_out = open_out "imguiml_impl_generated.ml" in
  let c_out = open_out "imguiml_impl_stubs.c" in
  let ml_fmt = Format.formatter_of_out_channel ml_out in
  let c_fmt = Format.formatter_of_out_channel c_out in
  Format.fprintf c_fmt "%s@\n" c_headers;
  Cstubs.write_c c_fmt ~prefix:"imguiml_impl_stub_"
    (module Imguiml_impl_bindings.Bindings);
  Cstubs.write_ml ml_fmt ~prefix:"imguiml_impl_stub_"
    (module Imguiml_impl_bindings.Bindings);
  Format.pp_print_flush ml_fmt ();
  Format.pp_print_flush c_fmt ();
  close_out ml_out;
  close_out c_out

let () = main ()
