open Ctypes

module Bindings (F : Ctypes.FOREIGN) = struct
  open F
  open Imguiml

  module OpenGL3 = struct
    let init = foreign "ImGui_ImplOpenGL3_Init" (string_opt @-> returning bool)
    let new_frame = foreign "ImGui_ImplOpenGL3_NewFrame" (void @-> returning void)

    let render_draw_data =
      foreign "ImGui_ImplOpenGL3_RenderDrawData"
        (ptr (lift_typ (Types.draw_data_t)) @-> returning void)

    let shutdown = foreign "ImGui_ImplOpenGL3_Shutdown" (void @-> returning void)
  end

  module Glfw = struct
    type window
    let window: window structure typ = structure "GLFWwindow"

    let init_for_opengl =
      foreign "ImGui_ImplGlfw_InitForOpenGL" (ptr window @-> bool @-> returning bool)

    let shutdown =
      foreign "ImGui_ImplGlfw_Shutdown" (void @-> returning void)

    let new_frame =
      foreign "ImGui_ImplGlfw_NewFrame" (void @-> returning void)
  end
end


