let c_header = "
#ifndef CIMGUI_DEFINE_ENUMS_AND_STRUCTS
#define CIMGUI_DEFINE_ENUMS_AND_STRUCTS
#endif
#include <cimgui.h>"

let main () =
  let ml_out = open_out "cimgui_bindings_generated.ml" in
  let c_out = open_out "cimgui_bindings_generated.c" in
  let ml_fmt = Format.formatter_of_out_channel ml_out in
  let c_fmt = Format.formatter_of_out_channel c_out in
  Format.fprintf c_fmt "%s@\n" c_header;
  Cstubs.write_c c_fmt ~prefix:"cimgui_binding_" (module Cimgui_bindings.Bindings);
  Cstubs.write_ml ml_fmt ~prefix:"cimgui_binding_" (module Cimgui_bindings.Bindings);
  Format.pp_print_flush c_fmt ();
  Format.pp_print_flush ml_fmt ();
  close_out c_out;
  close_out ml_out

let () = main ()
