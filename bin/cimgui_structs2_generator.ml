let c_headers =
  "\n\
   #ifndef CIMGUI_DEFINE_ENUMS_AND_STRUCTS\n\
   #define CIMGUI_DEFINE_ENUMS_AND_STRUCTS\n\
   #endif\n\
   #include <cimgui.h>"

let main () =
  let c_structs_out = open_out "cimgui_structs2_gen.c" in
  let c_structs_fmt = Format.formatter_of_out_channel c_structs_out in
  Format.fprintf c_structs_fmt "%s@\n" c_headers;
  Cstubs_structs.write_c c_structs_fmt (module Cimgui_structs2.Structs);
  Format.pp_print_flush c_structs_fmt ();
  close_out c_structs_out

let () = main ()


