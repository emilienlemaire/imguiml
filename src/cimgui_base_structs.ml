open Ctypes
open Cimgui_types
module Base (S : Ctypes.TYPE) = struct
  open S
  
    module Vec2 = struct
      type t = vec2_t structure
      let t : t typ = structure "ImVec2"
      let x = field t "x" float
      let y = field t "y" float
      let () = seal t
    end
    
    module Vec4 = struct
      type t = vec4_t structure
      let t : t typ = structure "ImVec4"
      let x = field t "x" float
      let y = field t "y" float
      let z = field t "z" float
      let w = field t "w" float
      let () = seal t
    end
    
    module Vec2ih = struct
      type t = vec2ih_t structure
      let t : t typ = structure "ImVec2ih"
      let x = field t "x" short
      let y = field t "y" short
      let () = seal t
    end
    
  
end