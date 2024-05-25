module Types = struct
  (** This module defines the cimgui types. Every typedef from cimgui have a type that ends with
      [_t] and every structure defined in cimgui have a module with the structure name, stripped
      of the [Im] or [ImGui] prefix.*)

  include Cimgui_types
  (** @inline *)

  include Cimgui_enums.Enums (Cimgui_enums_generated)
  (** @inline *)

  include Cimgui_base_structs.Base (Cimgui_base_structs_generated)
  (** @inline *)

  module NextItemData = Cimgui_structs1.NextItemData
  module TableColumnSortSpecs = Cimgui_structs1.TableColumnSortSpecs

  include Cimgui_structs1.Structs (Cimgui_structs1_generated)
  (** @inline *)

  module FontGlyph = Cimgui_structs2.FontGlyph
  module DockNode = Cimgui_structs2.DockNode
  module StackLevelInfo = Cimgui_structs2.StackLevelInfo
  module Context = Cimgui_structs2.Context
  module Window = Cimgui_structs2.Window
  module TableColumn = Cimgui_structs2.TableColumn
  module Table = Cimgui_structs2.Table
  module TableColumnSettings = Cimgui_structs2.TableColumnSettings

  include Cimgui_structs2.Structs (Cimgui_structs2_generated)
  (** @inline *)
end

module Bindings = struct
  (** This module contains the bindings to cimgui functions and methods. Methods
   are accessible via modules that have the same name as the Dear ImGUI class they
   belong to. *)

  (**/**)

  module type BINDINGS =
    module type of Cimgui_bindings with module Types = Types

  (**/**)

  module Cimgui__bindings : BINDINGS = Cimgui_bindings

  module Calculated__Bindings =
    Cimgui__bindings.Bindings (Cimgui_bindings_generated)

  include Calculated__Bindings
  (** @inline *)
end
