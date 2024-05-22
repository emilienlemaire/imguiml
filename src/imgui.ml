module Types = struct
  include Cimgui_types
  include Cimgui_enums.Enums (Cimgui_enums_generated)
  include Cimgui_base_structs.Base (Cimgui_base_structs_generated)
  module TableColumnSortSpecs = Cimgui_structs1.TableColumnSortSpecs
  include Cimgui_structs1.Structs (Cimgui_structs1_generated)
  module FontGlyph = Cimgui_structs2.FontGlyph
  module DockNode = Cimgui_structs2.DockNode
  module StackLevelInfo = Cimgui_structs2.StackLevelInfo
  module Context = Cimgui_structs2.Context
  module Window = Cimgui_structs2.Window
  module TableColumn = Cimgui_structs2.TableColumn
  module Table = Cimgui_structs2.Table
  module TableColumnSettings = Cimgui_structs2.TableColumnSettings
  include Cimgui_structs2.Structs (Cimgui_structs2_generated)
end

module Bindings = Cimgui_bindings.Bindings (Cimgui_bindings_generated)
