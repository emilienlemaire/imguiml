let c_headers =
  "\n\
   #ifndef CIMGUI_DEFINE_ENUMS_AND_STRUCTS\n\
   #define CIMGUI_DEFINE_ENUMS_AND_STRUCTS\n\
   #endif\n\
   #include <cimgui.h>"

let main () =
  let c_enums_out = open_out "cimgui_enums_gen.c" in
  let c_enums_fmt = Format.formatter_of_out_channel c_enums_out in
  Format.fprintf c_enums_fmt "%s@\n" c_headers;
  Cstubs_structs.write_c c_enums_fmt (module Cimgui_enums.Enums);
  Format.pp_print_flush c_enums_fmt ();
  close_out c_enums_out

let () = main ()

