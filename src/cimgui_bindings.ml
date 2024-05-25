open Ctypes
open Cimgui_types
open Cimgui_enums.Enums (Cimgui_enums_generated)
open Cimgui_base_structs.Base (Cimgui_base_structs_generated)
open Cimgui_structs1
open Cimgui_structs1.Structs (Cimgui_structs1_generated)
open Cimgui_structs2
open Cimgui_structs2.Structs (Cimgui_structs2_generated)
module Bindings (F : Ctypes.FOREIGN) = struct
  open F
  
  module ImVec2 = struct
    let nil =
      foreign "ImVec2_ImVec2_Nil" (void @-> returning (ptr (lift_typ Vec2.t)))
    let destroy =
      foreign "ImVec2_destroy" ((ptr (lift_typ Vec2.t)) @-> returning void)
    let float_ =
      foreign "ImVec2_ImVec2_Float"
        (float @-> float @-> returning (ptr (lift_typ Vec2.t)))
  end
  
  module ImVec4 = struct
    let nil =
      foreign "ImVec4_ImVec4_Nil" (void @-> returning (ptr (lift_typ Vec4.t)))
    let destroy =
      foreign "ImVec4_destroy" ((ptr (lift_typ Vec4.t)) @-> returning void)
    let float_ =
      foreign "ImVec4_ImVec4_Float"
        (float @-> float @-> float @-> float
          @-> returning (ptr (lift_typ Vec4.t)))
  end
  
  let create_context =
    foreign "igCreateContext"
      ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ Context.t)))
  let destroy_context =
    foreign "igDestroyContext" ((ptr (lift_typ Context.t)) @-> returning void)
  let get_current_context =
    foreign "igGetCurrentContext"
      (void @-> returning (ptr (lift_typ Context.t)))
  let set_current_context =
    foreign "igSetCurrentContext"
      ((ptr (lift_typ Context.t)) @-> returning void)
  let get_io = foreign "igGetIO" (void @-> returning (ptr (lift_typ Io.t)))
  let get_style =
    foreign "igGetStyle" (void @-> returning (ptr (lift_typ Style.t)))
  let new_frame = foreign "igNewFrame" (void @-> returning void)
  let end_frame = foreign "igEndFrame" (void @-> returning void)
  let render = foreign "igRender" (void @-> returning void)
  let get_draw_data =
    foreign "igGetDrawData" (void @-> returning (ptr (lift_typ DrawData.t)))
  let show_demo_window =
    foreign "igShowDemoWindow" ((ptr bool) @-> returning void)
  let show_metrics_window =
    foreign "igShowMetricsWindow" ((ptr bool) @-> returning void)
  let show_debug_log_window =
    foreign "igShowDebugLogWindow" ((ptr bool) @-> returning void)
  let show_id_stack_tool_window =
    foreign "igShowIDStackToolWindow" ((ptr bool) @-> returning void)
  let show_about_window =
    foreign "igShowAboutWindow" ((ptr bool) @-> returning void)
  let show_style_editor =
    foreign "igShowStyleEditor" ((ptr (lift_typ Style.t)) @-> returning void)
  let show_style_selector =
    foreign "igShowStyleSelector" (string @-> returning bool)
  let show_font_selector =
    foreign "igShowFontSelector" (string @-> returning void)
  let show_user_guide = foreign "igShowUserGuide" (void @-> returning void)
  let get_version = foreign "igGetVersion" (void @-> returning string)
  let style_colors_dark =
    foreign "igStyleColorsDark" ((ptr (lift_typ Style.t)) @-> returning void)
  let style_colors_light =
    foreign "igStyleColorsLight" ((ptr (lift_typ Style.t)) @-> returning void)
  let style_colors_classic =
    foreign "igStyleColorsClassic"
      ((ptr (lift_typ Style.t)) @-> returning void)
  let begin_ =
    foreign "igBegin"
      (string @-> (ptr bool) @-> (lift_typ window_flags_t) @-> returning bool)
  let end_ = foreign "igEnd" (void @-> returning void)
  let begin_child_str =
    foreign "igBeginChild_Str"
      (string @-> (lift_typ Vec2.t) @-> (lift_typ child_flags_t) @->
        (lift_typ window_flags_t) @-> returning bool)
  let begin_child_id =
    foreign "igBeginChild_ID"
      ((lift_typ id_t) @-> (lift_typ Vec2.t) @-> (lift_typ child_flags_t) @->
        (lift_typ window_flags_t) @-> returning bool)
  let end_child = foreign "igEndChild" (void @-> returning void)
  let is_window_appearing =
    foreign "igIsWindowAppearing" (void @-> returning bool)
  let is_window_collapsed =
    foreign "igIsWindowCollapsed" (void @-> returning bool)
  let is_window_focused =
    foreign "igIsWindowFocused" ((lift_typ focused_flags_t) @-> returning bool)
  let is_window_hovered =
    foreign "igIsWindowHovered" ((lift_typ hovered_flags_t) @-> returning bool)
  let get_window_draw_list =
    foreign "igGetWindowDrawList"
      (void @-> returning (ptr (lift_typ DrawList.t)))
  let get_window_dpi_scale =
    foreign "igGetWindowDpiScale" (void @-> returning float)
  let get_window_pos =
    foreign "igGetWindowPos" ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_window_size =
    foreign "igGetWindowSize" ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_window_width = foreign "igGetWindowWidth" (void @-> returning float)
  let get_window_height =
    foreign "igGetWindowHeight" (void @-> returning float)
  let get_window_viewport =
    foreign "igGetWindowViewport"
      (void @-> returning (ptr (lift_typ Viewport.t)))
  let set_next_window_pos =
    foreign "igSetNextWindowPos"
      ((lift_typ Vec2.t) @-> (lift_typ cond_t) @-> (lift_typ Vec2.t)
        @-> returning void)
  let set_next_window_size =
    foreign "igSetNextWindowSize"
      ((lift_typ Vec2.t) @-> (lift_typ cond_t) @-> returning void)
  let set_next_window_size_constraints =
    foreign "igSetNextWindowSizeConstraints"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> size_callback_t @->
        (ptr void) @-> returning void)
  let set_next_window_content_size =
    foreign "igSetNextWindowContentSize" ((lift_typ Vec2.t) @-> returning void)
  let set_next_window_collapsed =
    foreign "igSetNextWindowCollapsed"
      (bool @-> (lift_typ cond_t) @-> returning void)
  let set_next_window_focus =
    foreign "igSetNextWindowFocus" (void @-> returning void)
  let set_next_window_scroll =
    foreign "igSetNextWindowScroll" ((lift_typ Vec2.t) @-> returning void)
  let set_next_window_bg_alpha =
    foreign "igSetNextWindowBgAlpha" (float @-> returning void)
  let set_next_window_viewport =
    foreign "igSetNextWindowViewport" ((lift_typ id_t) @-> returning void)
  let set_window_pos_vec2 =
    foreign "igSetWindowPos_Vec2"
      ((lift_typ Vec2.t) @-> (lift_typ cond_t) @-> returning void)
  let set_window_size_vec2 =
    foreign "igSetWindowSize_Vec2"
      ((lift_typ Vec2.t) @-> (lift_typ cond_t) @-> returning void)
  let set_window_collapsed_bool =
    foreign "igSetWindowCollapsed_Bool"
      (bool @-> (lift_typ cond_t) @-> returning void)
  let set_window_focus_nil =
    foreign "igSetWindowFocus_Nil" (void @-> returning void)
  let set_window_font_scale =
    foreign "igSetWindowFontScale" (float @-> returning void)
  let set_window_pos_str =
    foreign "igSetWindowPos_Str"
      (string @-> (lift_typ Vec2.t) @-> (lift_typ cond_t) @-> returning void)
  let set_window_size_str =
    foreign "igSetWindowSize_Str"
      (string @-> (lift_typ Vec2.t) @-> (lift_typ cond_t) @-> returning void)
  let set_window_collapsed_str =
    foreign "igSetWindowCollapsed_Str"
      (string @-> bool @-> (lift_typ cond_t) @-> returning void)
  let set_window_focus_str =
    foreign "igSetWindowFocus_Str" (string @-> returning void)
  let get_content_region_avail =
    foreign "igGetContentRegionAvail"
      ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_content_region_max =
    foreign "igGetContentRegionMax"
      ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_window_content_region_min =
    foreign "igGetWindowContentRegionMin"
      ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_window_content_region_max =
    foreign "igGetWindowContentRegionMax"
      ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_scroll_x = foreign "igGetScrollX" (void @-> returning float)
  let get_scroll_y = foreign "igGetScrollY" (void @-> returning float)
  let set_scroll_x_float =
    foreign "igSetScrollX_Float" (float @-> returning void)
  let set_scroll_y_float =
    foreign "igSetScrollY_Float" (float @-> returning void)
  let get_scroll_max_x = foreign "igGetScrollMaxX" (void @-> returning float)
  let get_scroll_max_y = foreign "igGetScrollMaxY" (void @-> returning float)
  let set_scroll_here_x = foreign "igSetScrollHereX" (float @-> returning void)
  let set_scroll_here_y = foreign "igSetScrollHereY" (float @-> returning void)
  let set_scroll_from_pos_x_float =
    foreign "igSetScrollFromPosX_Float" (float @-> float @-> returning void)
  let set_scroll_from_pos_y_float =
    foreign "igSetScrollFromPosY_Float" (float @-> float @-> returning void)
  let push_font =
    foreign "igPushFont" ((ptr (lift_typ Font.t)) @-> returning void)
  let pop_font = foreign "igPopFont" (void @-> returning void)
  let push_style_color_u32 =
    foreign "igPushStyleColor_U32"
      ((lift_typ col_t) @-> (lift_typ u32_t) @-> returning void)
  let push_style_color_vec4 =
    foreign "igPushStyleColor_Vec4"
      ((lift_typ col_t) @-> (lift_typ Vec4.t) @-> returning void)
  let pop_style_color = foreign "igPopStyleColor" (int @-> returning void)
  let push_style_var_float =
    foreign "igPushStyleVar_Float"
      ((lift_typ style_var_t) @-> float @-> returning void)
  let push_style_var_vec2 =
    foreign "igPushStyleVar_Vec2"
      ((lift_typ style_var_t) @-> (lift_typ Vec2.t) @-> returning void)
  let pop_style_var = foreign "igPopStyleVar" (int @-> returning void)
  let push_tab_stop = foreign "igPushTabStop" (bool @-> returning void)
  let pop_tab_stop = foreign "igPopTabStop" (void @-> returning void)
  let push_button_repeat =
    foreign "igPushButtonRepeat" (bool @-> returning void)
  let pop_button_repeat = foreign "igPopButtonRepeat" (void @-> returning void)
  let push_item_width = foreign "igPushItemWidth" (float @-> returning void)
  let pop_item_width = foreign "igPopItemWidth" (void @-> returning void)
  let set_next_item_width =
    foreign "igSetNextItemWidth" (float @-> returning void)
  let calc_item_width = foreign "igCalcItemWidth" (void @-> returning float)
  let push_text_wrap_pos =
    foreign "igPushTextWrapPos" (float @-> returning void)
  let pop_text_wrap_pos = foreign "igPopTextWrapPos" (void @-> returning void)
  let get_font =
    foreign "igGetFont" (void @-> returning (ptr (lift_typ Font.t)))
  let get_font_size = foreign "igGetFontSize" (void @-> returning float)
  let get_font_tex_uv_white_pixel =
    foreign "igGetFontTexUvWhitePixel"
      ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_color_u32_col =
    foreign "igGetColorU32_Col"
      ((lift_typ col_t) @-> float @-> returning (lift_typ u32_t))
  let get_color_u32_vec4 =
    foreign "igGetColorU32_Vec4"
      ((lift_typ Vec4.t) @-> returning (lift_typ u32_t))
  let get_color_u32_u32 =
    foreign "igGetColorU32_U32"
      ((lift_typ u32_t) @-> float @-> returning (lift_typ u32_t))
  let get_style_color_vec4 =
    foreign "igGetStyleColorVec4"
      ((lift_typ col_t) @-> returning (ptr (lift_typ Vec4.t)))
  let get_cursor_screen_pos =
    foreign "igGetCursorScreenPos" ((ptr (lift_typ Vec2.t)) @-> returning void)
  let set_cursor_screen_pos =
    foreign "igSetCursorScreenPos" ((lift_typ Vec2.t) @-> returning void)
  let get_cursor_pos =
    foreign "igGetCursorPos" ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_cursor_pos_x = foreign "igGetCursorPosX" (void @-> returning float)
  let get_cursor_pos_y = foreign "igGetCursorPosY" (void @-> returning float)
  let set_cursor_pos =
    foreign "igSetCursorPos" ((lift_typ Vec2.t) @-> returning void)
  let set_cursor_pos_x = foreign "igSetCursorPosX" (float @-> returning void)
  let set_cursor_pos_y = foreign "igSetCursorPosY" (float @-> returning void)
  let get_cursor_start_pos =
    foreign "igGetCursorStartPos" ((ptr (lift_typ Vec2.t)) @-> returning void)
  let separator = foreign "igSeparator" (void @-> returning void)
  let same_line = foreign "igSameLine" (float @-> float @-> returning void)
  let new_line = foreign "igNewLine" (void @-> returning void)
  let spacing = foreign "igSpacing" (void @-> returning void)
  let dummy = foreign "igDummy" ((lift_typ Vec2.t) @-> returning void)
  let indent = foreign "igIndent" (float @-> returning void)
  let unindent = foreign "igUnindent" (float @-> returning void)
  let begin_group = foreign "igBeginGroup" (void @-> returning void)
  let end_group = foreign "igEndGroup" (void @-> returning void)
  let align_text_to_frame_padding =
    foreign "igAlignTextToFramePadding" (void @-> returning void)
  let get_text_line_height =
    foreign "igGetTextLineHeight" (void @-> returning float)
  let get_text_line_height_with_spacing =
    foreign "igGetTextLineHeightWithSpacing" (void @-> returning float)
  let get_frame_height = foreign "igGetFrameHeight" (void @-> returning float)
  let get_frame_height_with_spacing =
    foreign "igGetFrameHeightWithSpacing" (void @-> returning float)
  let push_id_str = foreign "igPushID_Str" (string @-> returning void)
  let push_id_str_str =
    foreign "igPushID_StrStr" (string @-> string @-> returning void)
  let push_id_ptr = foreign "igPushID_Ptr" ((ptr void) @-> returning void)
  let push_id_int = foreign "igPushID_Int" (int @-> returning void)
  let pop_id = foreign "igPopID" (void @-> returning void)
  let get_id_str = foreign "igGetID_Str" (string @-> returning (lift_typ id_t))
  let get_id_str_str =
    foreign "igGetID_StrStr" (string @-> string @-> returning (lift_typ id_t))
  let get_id_ptr =
    foreign "igGetID_Ptr" ((ptr void) @-> returning (lift_typ id_t))
  let text_unformatted =
    foreign "igTextUnformatted" (string @-> string @-> returning void)
  let text = foreign "igText" (string @-> returning void)
  let text_v =
    foreign "igTextV" (string @-> (lift_typ va_list_t) @-> returning void)
  let text_colored =
    foreign "igTextColored" ((lift_typ Vec4.t) @-> string @-> returning void)
  let text_colored_v =
    foreign "igTextColoredV"
      ((lift_typ Vec4.t) @-> string @-> (lift_typ va_list_t)
        @-> returning void)
  let text_disabled = foreign "igTextDisabled" (string @-> returning void)
  let text_disabled_v =
    foreign "igTextDisabledV"
      (string @-> (lift_typ va_list_t) @-> returning void)
  let text_wrapped = foreign "igTextWrapped" (string @-> returning void)
  let text_wrapped_v =
    foreign "igTextWrappedV"
      (string @-> (lift_typ va_list_t) @-> returning void)
  let label_text = foreign "igLabelText" (string @-> string @-> returning void)
  let label_text_v =
    foreign "igLabelTextV"
      (string @-> string @-> (lift_typ va_list_t) @-> returning void)
  let bullet_text = foreign "igBulletText" (string @-> returning void)
  let bullet_text_v =
    foreign "igBulletTextV"
      (string @-> (lift_typ va_list_t) @-> returning void)
  let separator_text = foreign "igSeparatorText" (string @-> returning void)
  let button =
    foreign "igButton" (string @-> (lift_typ Vec2.t) @-> returning bool)
  let small_button = foreign "igSmallButton" (string @-> returning bool)
  let invisible_button =
    foreign "igInvisibleButton"
      (string @-> (lift_typ Vec2.t) @-> (lift_typ button_flags_t)
        @-> returning bool)
  let arrow_button =
    foreign "igArrowButton" (string @-> (lift_typ dir_t) @-> returning bool)
  let checkbox =
    foreign "igCheckbox" (string @-> (ptr bool) @-> returning bool)
  let checkbox_flags_int_ptr =
    foreign "igCheckboxFlags_IntPtr"
      (string @-> (ptr int) @-> int @-> returning bool)
  let checkbox_flags_uint_ptr =
    foreign "igCheckboxFlags_UintPtr"
      (string @-> (ptr (lift_typ int_as_uint)) @-> (lift_typ int_as_uint)
        @-> returning bool)
  let radio_button_bool =
    foreign "igRadioButton_Bool" (string @-> bool @-> returning bool)
  let radio_button_int_ptr =
    foreign "igRadioButton_IntPtr"
      (string @-> (ptr int) @-> int @-> returning bool)
  let progress_bar =
    foreign "igProgressBar"
      (float @-> (lift_typ Vec2.t) @-> string @-> returning void)
  let bullet = foreign "igBullet" (void @-> returning void)
  let image =
    foreign "igImage"
      ((lift_typ texture_id_t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (lift_typ Vec4.t) @-> (lift_typ Vec4.t)
        @-> returning void)
  let image_button =
    foreign "igImageButton"
      (string @-> (lift_typ texture_id_t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec4.t) @->
        (lift_typ Vec4.t) @-> returning bool)
  let begin_combo =
    foreign "igBeginCombo"
      (string @-> string @-> (lift_typ combo_flags_t) @-> returning bool)
  let end_combo = foreign "igEndCombo" (void @-> returning void)
  let combo_str_arr =
    foreign "igCombo_Str_arr"
      (string @-> (ptr int) @-> (ptr string) @-> int @-> int
        @-> returning bool)
  let combo_str =
    foreign "igCombo_Str"
      (string @-> (ptr int) @-> string @-> int @-> returning bool)
  let combo_fn_str_ptr =
    foreign "igCombo_FnStrPtr"
      (string @-> (ptr int) @-> getter_t @-> (ptr void) @-> int @-> int
        @-> returning bool)
  let drag_float =
    foreign "igDragFloat"
      (string @-> (ptr float) @-> float @-> float @-> float @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let drag_float2 =
    foreign "igDragFloat2"
      (string @-> (ptr float) @-> float @-> float @-> float @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let drag_float3 =
    foreign "igDragFloat3"
      (string @-> (ptr float) @-> float @-> float @-> float @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let drag_float4 =
    foreign "igDragFloat4"
      (string @-> (ptr float) @-> float @-> float @-> float @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let drag_float_range2 =
    foreign "igDragFloatRange2"
      (string @-> (ptr float) @-> (ptr float) @-> float @-> float @-> float @->
        string @-> string @-> (lift_typ slider_flags_t) @-> returning bool)
  let drag_int =
    foreign "igDragInt"
      (string @-> (ptr int) @-> float @-> int @-> int @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let drag_int2 =
    foreign "igDragInt2"
      (string @-> (ptr int) @-> float @-> int @-> int @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let drag_int3 =
    foreign "igDragInt3"
      (string @-> (ptr int) @-> float @-> int @-> int @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let drag_int4 =
    foreign "igDragInt4"
      (string @-> (ptr int) @-> float @-> int @-> int @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let drag_int_range2 =
    foreign "igDragIntRange2"
      (string @-> (ptr int) @-> (ptr int) @-> float @-> int @-> int @-> string
        @-> string @-> (lift_typ slider_flags_t) @-> returning bool)
  let drag_scalar =
    foreign "igDragScalar"
      (string @-> (lift_typ data_type_t) @-> (ptr void) @-> float @->
        (ptr void) @-> (ptr void) @-> string @-> (lift_typ slider_flags_t)
        @-> returning bool)
  let drag_scalar_n =
    foreign "igDragScalarN"
      (string @-> (lift_typ data_type_t) @-> (ptr void) @-> int @-> float @->
        (ptr void) @-> (ptr void) @-> string @-> (lift_typ slider_flags_t)
        @-> returning bool)
  let slider_float =
    foreign "igSliderFloat"
      (string @-> (ptr float) @-> float @-> float @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let slider_float2 =
    foreign "igSliderFloat2"
      (string @-> (ptr float) @-> float @-> float @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let slider_float3 =
    foreign "igSliderFloat3"
      (string @-> (ptr float) @-> float @-> float @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let slider_float4 =
    foreign "igSliderFloat4"
      (string @-> (ptr float) @-> float @-> float @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let slider_angle =
    foreign "igSliderAngle"
      (string @-> (ptr float) @-> float @-> float @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let slider_int =
    foreign "igSliderInt"
      (string @-> (ptr int) @-> int @-> int @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let slider_int2 =
    foreign "igSliderInt2"
      (string @-> (ptr int) @-> int @-> int @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let slider_int3 =
    foreign "igSliderInt3"
      (string @-> (ptr int) @-> int @-> int @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let slider_int4 =
    foreign "igSliderInt4"
      (string @-> (ptr int) @-> int @-> int @-> string @->
        (lift_typ slider_flags_t) @-> returning bool)
  let slider_scalar =
    foreign "igSliderScalar"
      (string @-> (lift_typ data_type_t) @-> (ptr void) @-> (ptr void) @->
        (ptr void) @-> string @-> (lift_typ slider_flags_t) @-> returning bool)
  let slider_scalar_n =
    foreign "igSliderScalarN"
      (string @-> (lift_typ data_type_t) @-> (ptr void) @-> int @-> (ptr void)
        @-> (ptr void) @-> string @-> (lift_typ slider_flags_t)
        @-> returning bool)
  let v_slider_float =
    foreign "igVSliderFloat"
      (string @-> (lift_typ Vec2.t) @-> (ptr float) @-> float @-> float @->
        string @-> (lift_typ slider_flags_t) @-> returning bool)
  let v_slider_int =
    foreign "igVSliderInt"
      (string @-> (lift_typ Vec2.t) @-> (ptr int) @-> int @-> int @-> string
        @-> (lift_typ slider_flags_t) @-> returning bool)
  let v_slider_scalar =
    foreign "igVSliderScalar"
      (string @-> (lift_typ Vec2.t) @-> (lift_typ data_type_t) @-> (ptr void)
        @-> (ptr void) @-> (ptr void) @-> string @-> (lift_typ slider_flags_t)
        @-> returning bool)
  let input_text =
    foreign "igInputText"
      (string @-> string @-> (lift_typ int_as_size_t) @->
        (lift_typ input_text_flags_t) @-> input_text_callback_t @-> (ptr void)
        @-> returning bool)
  let input_text_multiline =
    foreign "igInputTextMultiline"
      (string @-> string @-> (lift_typ int_as_size_t) @-> (lift_typ Vec2.t) @->
        (lift_typ input_text_flags_t) @-> input_text_callback_t @-> (ptr void)
        @-> returning bool)
  let input_text_with_hint =
    foreign "igInputTextWithHint"
      (string @-> string @-> string @-> (lift_typ int_as_size_t) @->
        (lift_typ input_text_flags_t) @-> input_text_callback_t @-> (ptr void)
        @-> returning bool)
  let input_float =
    foreign "igInputFloat"
      (string @-> (ptr float) @-> float @-> float @-> string @->
        (lift_typ input_text_flags_t) @-> returning bool)
  let input_float2 =
    foreign "igInputFloat2"
      (string @-> (ptr float) @-> string @-> (lift_typ input_text_flags_t)
        @-> returning bool)
  let input_float3 =
    foreign "igInputFloat3"
      (string @-> (ptr float) @-> string @-> (lift_typ input_text_flags_t)
        @-> returning bool)
  let input_float4 =
    foreign "igInputFloat4"
      (string @-> (ptr float) @-> string @-> (lift_typ input_text_flags_t)
        @-> returning bool)
  let input_int =
    foreign "igInputInt"
      (string @-> (ptr int) @-> int @-> int @-> (lift_typ input_text_flags_t)
        @-> returning bool)
  let input_int2 =
    foreign "igInputInt2"
      (string @-> (ptr int) @-> (lift_typ input_text_flags_t)
        @-> returning bool)
  let input_int3 =
    foreign "igInputInt3"
      (string @-> (ptr int) @-> (lift_typ input_text_flags_t)
        @-> returning bool)
  let input_int4 =
    foreign "igInputInt4"
      (string @-> (ptr int) @-> (lift_typ input_text_flags_t)
        @-> returning bool)
  let input_double =
    foreign "igInputDouble"
      (string @-> (ptr float) @-> float @-> float @-> string @->
        (lift_typ input_text_flags_t) @-> returning bool)
  let input_scalar =
    foreign "igInputScalar"
      (string @-> (lift_typ data_type_t) @-> (ptr void) @-> (ptr void) @->
        (ptr void) @-> string @-> (lift_typ input_text_flags_t)
        @-> returning bool)
  let input_scalar_n =
    foreign "igInputScalarN"
      (string @-> (lift_typ data_type_t) @-> (ptr void) @-> int @-> (ptr void)
        @-> (ptr void) @-> string @-> (lift_typ input_text_flags_t)
        @-> returning bool)
  let color_edit3 =
    foreign "igColorEdit3"
      (string @-> (ptr float) @-> (lift_typ color_edit_flags_t)
        @-> returning bool)
  let color_edit4 =
    foreign "igColorEdit4"
      (string @-> (ptr float) @-> (lift_typ color_edit_flags_t)
        @-> returning bool)
  let color_picker3 =
    foreign "igColorPicker3"
      (string @-> (ptr float) @-> (lift_typ color_edit_flags_t)
        @-> returning bool)
  let color_picker4 =
    foreign "igColorPicker4"
      (string @-> (ptr float) @-> (lift_typ color_edit_flags_t) @-> (ptr float)
        @-> returning bool)
  let color_button =
    foreign "igColorButton"
      (string @-> (lift_typ Vec4.t) @-> (lift_typ color_edit_flags_t) @->
        (lift_typ Vec2.t) @-> returning bool)
  let set_color_edit_options =
    foreign "igSetColorEditOptions"
      ((lift_typ color_edit_flags_t) @-> returning void)
  let tree_node_str = foreign "igTreeNode_Str" (string @-> returning bool)
  let tree_node_str_str =
    foreign "igTreeNode_StrStr" (string @-> string @-> returning bool)
  let tree_node_ptr =
    foreign "igTreeNode_Ptr" ((ptr void) @-> string @-> returning bool)
  let tree_node_v_str =
    foreign "igTreeNodeV_Str"
      (string @-> string @-> (lift_typ va_list_t) @-> returning bool)
  let tree_node_v_ptr =
    foreign "igTreeNodeV_Ptr"
      ((ptr void) @-> string @-> (lift_typ va_list_t) @-> returning bool)
  let tree_node_ex_str =
    foreign "igTreeNodeEx_Str"
      (string @-> (lift_typ tree_node_flags_t) @-> returning bool)
  let tree_node_ex_str_str =
    foreign "igTreeNodeEx_StrStr"
      (string @-> (lift_typ tree_node_flags_t) @-> string @-> returning bool)
  let tree_node_ex_ptr =
    foreign "igTreeNodeEx_Ptr"
      ((ptr void) @-> (lift_typ tree_node_flags_t) @-> string
        @-> returning bool)
  let tree_node_ex_v_str =
    foreign "igTreeNodeExV_Str"
      (string @-> (lift_typ tree_node_flags_t) @-> string @->
        (lift_typ va_list_t) @-> returning bool)
  let tree_node_ex_v_ptr =
    foreign "igTreeNodeExV_Ptr"
      ((ptr void) @-> (lift_typ tree_node_flags_t) @-> string @->
        (lift_typ va_list_t) @-> returning bool)
  let tree_push_str = foreign "igTreePush_Str" (string @-> returning void)
  let tree_push_ptr = foreign "igTreePush_Ptr" ((ptr void) @-> returning void)
  let tree_pop = foreign "igTreePop" (void @-> returning void)
  let get_tree_node_to_label_spacing =
    foreign "igGetTreeNodeToLabelSpacing" (void @-> returning float)
  let collapsing_header_tree_node_flags =
    foreign "igCollapsingHeader_TreeNodeFlags"
      (string @-> (lift_typ tree_node_flags_t) @-> returning bool)
  let collapsing_header_bool_ptr =
    foreign "igCollapsingHeader_BoolPtr"
      (string @-> (ptr bool) @-> (lift_typ tree_node_flags_t)
        @-> returning bool)
  let set_next_item_open =
    foreign "igSetNextItemOpen" (bool @-> (lift_typ cond_t) @-> returning void)
  let selectable_bool =
    foreign "igSelectable_Bool"
      (string @-> bool @-> (lift_typ selectable_flags_t) @-> (lift_typ Vec2.t)
        @-> returning bool)
  let selectable_bool_ptr =
    foreign "igSelectable_BoolPtr"
      (string @-> (ptr bool) @-> (lift_typ selectable_flags_t) @->
        (lift_typ Vec2.t) @-> returning bool)
  let begin_list_box =
    foreign "igBeginListBox" (string @-> (lift_typ Vec2.t) @-> returning bool)
  let end_list_box = foreign "igEndListBox" (void @-> returning void)
  let list_box_str_arr =
    foreign "igListBox_Str_arr"
      (string @-> (ptr int) @-> (ptr string) @-> int @-> int
        @-> returning bool)
  let list_box_fn_str_ptr =
    foreign "igListBox_FnStrPtr"
      (string @-> (ptr int) @-> getter_t @-> (ptr void) @-> int @-> int
        @-> returning bool)
  let plot_lines_float_ptr =
    foreign "igPlotLines_FloatPtr"
      (string @-> (ptr float) @-> int @-> int @-> string @-> float @-> float
        @-> (lift_typ Vec2.t) @-> int @-> returning void)
  let plot_lines_fn_float_ptr =
    foreign "igPlotLines_FnFloatPtr"
      (string @-> values_getter_t @-> (ptr void) @-> int @-> int @-> string @->
        float @-> float @-> (lift_typ Vec2.t) @-> returning void)
  let plot_histogram_float_ptr =
    foreign "igPlotHistogram_FloatPtr"
      (string @-> (ptr float) @-> int @-> int @-> string @-> float @-> float
        @-> (lift_typ Vec2.t) @-> int @-> returning void)
  let plot_histogram_fn_float_ptr =
    foreign "igPlotHistogram_FnFloatPtr"
      (string @-> values_getter_t @-> (ptr void) @-> int @-> int @-> string @->
        float @-> float @-> (lift_typ Vec2.t) @-> returning void)
  let value_bool = foreign "igValue_Bool" (string @-> bool @-> returning void)
  let value_int = foreign "igValue_Int" (string @-> int @-> returning void)
  let value_uint =
    foreign "igValue_Uint"
      (string @-> (lift_typ int_as_uint) @-> returning void)
  let value_float =
    foreign "igValue_Float" (string @-> float @-> string @-> returning void)
  let begin_menu_bar = foreign "igBeginMenuBar" (void @-> returning bool)
  let end_menu_bar = foreign "igEndMenuBar" (void @-> returning void)
  let begin_main_menu_bar =
    foreign "igBeginMainMenuBar" (void @-> returning bool)
  let end_main_menu_bar = foreign "igEndMainMenuBar" (void @-> returning void)
  let begin_menu = foreign "igBeginMenu" (string @-> bool @-> returning bool)
  let end_menu = foreign "igEndMenu" (void @-> returning void)
  let menu_item_bool =
    foreign "igMenuItem_Bool"
      (string @-> string @-> bool @-> bool @-> returning bool)
  let menu_item_bool_ptr =
    foreign "igMenuItem_BoolPtr"
      (string @-> string @-> (ptr bool) @-> bool @-> returning bool)
  let begin_tooltip = foreign "igBeginTooltip" (void @-> returning bool)
  let end_tooltip = foreign "igEndTooltip" (void @-> returning void)
  let set_tooltip = foreign "igSetTooltip" (string @-> returning void)
  let set_tooltip_v =
    foreign "igSetTooltipV"
      (string @-> (lift_typ va_list_t) @-> returning void)
  let begin_item_tooltip =
    foreign "igBeginItemTooltip" (void @-> returning bool)
  let set_item_tooltip = foreign "igSetItemTooltip" (string @-> returning void)
  let set_item_tooltip_v =
    foreign "igSetItemTooltipV"
      (string @-> (lift_typ va_list_t) @-> returning void)
  let begin_popup =
    foreign "igBeginPopup"
      (string @-> (lift_typ window_flags_t) @-> returning bool)
  let begin_popup_modal =
    foreign "igBeginPopupModal"
      (string @-> (ptr bool) @-> (lift_typ window_flags_t) @-> returning bool)
  let end_popup = foreign "igEndPopup" (void @-> returning void)
  let open_popup_str =
    foreign "igOpenPopup_Str"
      (string @-> (lift_typ popup_flags_t) @-> returning void)
  let open_popup_id =
    foreign "igOpenPopup_ID"
      ((lift_typ id_t) @-> (lift_typ popup_flags_t) @-> returning void)
  let open_popup_on_item_click =
    foreign "igOpenPopupOnItemClick"
      (string @-> (lift_typ popup_flags_t) @-> returning void)
  let close_current_popup =
    foreign "igCloseCurrentPopup" (void @-> returning void)
  let begin_popup_context_item =
    foreign "igBeginPopupContextItem"
      (string @-> (lift_typ popup_flags_t) @-> returning bool)
  let begin_popup_context_window =
    foreign "igBeginPopupContextWindow"
      (string @-> (lift_typ popup_flags_t) @-> returning bool)
  let begin_popup_context_void =
    foreign "igBeginPopupContextVoid"
      (string @-> (lift_typ popup_flags_t) @-> returning bool)
  let is_popup_open_str =
    foreign "igIsPopupOpen_Str"
      (string @-> (lift_typ popup_flags_t) @-> returning bool)
  let begin_table =
    foreign "igBeginTable"
      (string @-> int @-> (lift_typ table_flags_t) @-> (lift_typ Vec2.t) @->
        float @-> returning bool)
  let end_table = foreign "igEndTable" (void @-> returning void)
  let table_next_row =
    foreign "igTableNextRow"
      ((lift_typ table_row_flags_t) @-> float @-> returning void)
  let table_next_column = foreign "igTableNextColumn" (void @-> returning bool)
  let table_set_column_index =
    foreign "igTableSetColumnIndex" (int @-> returning bool)
  let table_setup_column =
    foreign "igTableSetupColumn"
      (string @-> (lift_typ table_column_flags_t) @-> float @-> (lift_typ id_t)
        @-> returning void)
  let table_setup_scroll_freeze =
    foreign "igTableSetupScrollFreeze" (int @-> int @-> returning void)
  let table_header = foreign "igTableHeader" (string @-> returning void)
  let table_headers_row = foreign "igTableHeadersRow" (void @-> returning void)
  let table_angled_headers_row =
    foreign "igTableAngledHeadersRow" (void @-> returning void)
  let table_get_sort_specs =
    foreign "igTableGetSortSpecs"
      (void @-> returning (ptr (lift_typ TableSortSpecs.t)))
  let table_get_column_count =
    foreign "igTableGetColumnCount" (void @-> returning int)
  let table_get_column_index =
    foreign "igTableGetColumnIndex" (void @-> returning int)
  let table_get_row_index =
    foreign "igTableGetRowIndex" (void @-> returning int)
  let table_get_column_name_int =
    foreign "igTableGetColumnName_Int" (int @-> returning string)
  let table_get_column_flags =
    foreign "igTableGetColumnFlags"
      (int @-> returning (lift_typ table_column_flags_t))
  let table_set_column_enabled =
    foreign "igTableSetColumnEnabled" (int @-> bool @-> returning void)
  let table_set_bg_color =
    foreign "igTableSetBgColor"
      ((lift_typ table_bg_target_t) @-> (lift_typ u32_t) @-> int
        @-> returning void)
  let columns =
    foreign "igColumns" (int @-> string @-> bool @-> returning void)
  let next_column = foreign "igNextColumn" (void @-> returning void)
  let get_column_index = foreign "igGetColumnIndex" (void @-> returning int)
  let get_column_width = foreign "igGetColumnWidth" (int @-> returning float)
  let set_column_width =
    foreign "igSetColumnWidth" (int @-> float @-> returning void)
  let get_column_offset = foreign "igGetColumnOffset" (int @-> returning float)
  let set_column_offset =
    foreign "igSetColumnOffset" (int @-> float @-> returning void)
  let get_columns_count = foreign "igGetColumnsCount" (void @-> returning int)
  let begin_tab_bar =
    foreign "igBeginTabBar"
      (string @-> (lift_typ tab_bar_flags_t) @-> returning bool)
  let end_tab_bar = foreign "igEndTabBar" (void @-> returning void)
  let begin_tab_item =
    foreign "igBeginTabItem"
      (string @-> (ptr bool) @-> (lift_typ tab_item_flags_t)
        @-> returning bool)
  let end_tab_item = foreign "igEndTabItem" (void @-> returning void)
  let tab_item_button =
    foreign "igTabItemButton"
      (string @-> (lift_typ tab_item_flags_t) @-> returning bool)
  let set_tab_item_closed =
    foreign "igSetTabItemClosed" (string @-> returning void)
  let dock_space =
    foreign "igDockSpace"
      ((lift_typ id_t) @-> (lift_typ Vec2.t) @-> (lift_typ dock_node_flags_t)
        @-> (ptr (lift_typ WindowClass.t)) @-> returning (lift_typ id_t))
  let dock_space_over_viewport =
    foreign "igDockSpaceOverViewport"
      ((ptr (lift_typ Viewport.t)) @-> (lift_typ dock_node_flags_t) @->
        (ptr (lift_typ WindowClass.t)) @-> returning (lift_typ id_t))
  let set_next_window_dock_id =
    foreign "igSetNextWindowDockID"
      ((lift_typ id_t) @-> (lift_typ cond_t) @-> returning void)
  let set_next_window_class =
    foreign "igSetNextWindowClass"
      ((ptr (lift_typ WindowClass.t)) @-> returning void)
  let get_window_dock_id =
    foreign "igGetWindowDockID" (void @-> returning (lift_typ id_t))
  let is_window_docked = foreign "igIsWindowDocked" (void @-> returning bool)
  let log_to_tty = foreign "igLogToTTY" (int @-> returning void)
  let log_to_file = foreign "igLogToFile" (int @-> string @-> returning void)
  let log_to_clipboard = foreign "igLogToClipboard" (int @-> returning void)
  let log_finish = foreign "igLogFinish" (void @-> returning void)
  let log_buttons = foreign "igLogButtons" (void @-> returning void)
  let log_text_v =
    foreign "igLogTextV" (string @-> (lift_typ va_list_t) @-> returning void)
  let begin_drag_drop_source =
    foreign "igBeginDragDropSource"
      ((lift_typ drag_drop_flags_t) @-> returning bool)
  let set_drag_drop_payload =
    foreign "igSetDragDropPayload"
      (string @-> (ptr void) @-> (lift_typ int_as_size_t) @-> (lift_typ cond_t)
        @-> returning bool)
  let end_drag_drop_source =
    foreign "igEndDragDropSource" (void @-> returning void)
  let begin_drag_drop_target =
    foreign "igBeginDragDropTarget" (void @-> returning bool)
  let accept_drag_drop_payload =
    foreign "igAcceptDragDropPayload"
      (string @-> (lift_typ drag_drop_flags_t)
        @-> returning (ptr (lift_typ Payload.t)))
  let end_drag_drop_target =
    foreign "igEndDragDropTarget" (void @-> returning void)
  let get_drag_drop_payload =
    foreign "igGetDragDropPayload"
      (void @-> returning (ptr (lift_typ Payload.t)))
  let begin_disabled = foreign "igBeginDisabled" (bool @-> returning void)
  let end_disabled = foreign "igEndDisabled" (void @-> returning void)
  let push_clip_rect =
    foreign "igPushClipRect"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> bool @-> returning void)
  let pop_clip_rect = foreign "igPopClipRect" (void @-> returning void)
  let set_item_default_focus =
    foreign "igSetItemDefaultFocus" (void @-> returning void)
  let set_keyboard_focus_here =
    foreign "igSetKeyboardFocusHere" (int @-> returning void)
  let set_next_item_allow_overlap =
    foreign "igSetNextItemAllowOverlap" (void @-> returning void)
  let is_item_hovered =
    foreign "igIsItemHovered" ((lift_typ hovered_flags_t) @-> returning bool)
  let is_item_active = foreign "igIsItemActive" (void @-> returning bool)
  let is_item_focused = foreign "igIsItemFocused" (void @-> returning bool)
  let is_item_clicked =
    foreign "igIsItemClicked" ((lift_typ mouse_button_t) @-> returning bool)
  let is_item_visible = foreign "igIsItemVisible" (void @-> returning bool)
  let is_item_edited = foreign "igIsItemEdited" (void @-> returning bool)
  let is_item_activated = foreign "igIsItemActivated" (void @-> returning bool)
  let is_item_deactivated =
    foreign "igIsItemDeactivated" (void @-> returning bool)
  let is_item_deactivated_after_edit =
    foreign "igIsItemDeactivatedAfterEdit" (void @-> returning bool)
  let is_item_toggled_open =
    foreign "igIsItemToggledOpen" (void @-> returning bool)
  let is_any_item_hovered =
    foreign "igIsAnyItemHovered" (void @-> returning bool)
  let is_any_item_active =
    foreign "igIsAnyItemActive" (void @-> returning bool)
  let is_any_item_focused =
    foreign "igIsAnyItemFocused" (void @-> returning bool)
  let get_item_id = foreign "igGetItemID" (void @-> returning (lift_typ id_t))
  let get_item_rect_min =
    foreign "igGetItemRectMin" ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_item_rect_max =
    foreign "igGetItemRectMax" ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_item_rect_size =
    foreign "igGetItemRectSize" ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_main_viewport =
    foreign "igGetMainViewport"
      (void @-> returning (ptr (lift_typ Viewport.t)))
  let get_background_draw_list_nil =
    foreign "igGetBackgroundDrawList_Nil"
      (void @-> returning (ptr (lift_typ DrawList.t)))
  let get_foreground_draw_list_nil =
    foreign "igGetForegroundDrawList_Nil"
      (void @-> returning (ptr (lift_typ DrawList.t)))
  let get_background_draw_list_viewport_ptr =
    foreign "igGetBackgroundDrawList_ViewportPtr"
      ((ptr (lift_typ Viewport.t)) @-> returning (ptr (lift_typ DrawList.t)))
  let get_foreground_draw_list_viewport_ptr =
    foreign "igGetForegroundDrawList_ViewportPtr"
      ((ptr (lift_typ Viewport.t)) @-> returning (ptr (lift_typ DrawList.t)))
  let is_rect_visible_nil =
    foreign "igIsRectVisible_Nil" ((lift_typ Vec2.t) @-> returning bool)
  let is_rect_visible_vec2 =
    foreign "igIsRectVisible_Vec2"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> returning bool)
  let get_time = foreign "igGetTime" (void @-> returning float)
  let get_frame_count = foreign "igGetFrameCount" (void @-> returning int)
  let get_draw_list_shared_data =
    foreign "igGetDrawListSharedData"
      (void @-> returning (ptr (lift_typ DrawListSharedData.t)))
  let get_style_color_name =
    foreign "igGetStyleColorName" ((lift_typ col_t) @-> returning string)
  let set_state_storage =
    foreign "igSetStateStorage" ((ptr (lift_typ Storage.t)) @-> returning void)
  let get_state_storage =
    foreign "igGetStateStorage" (void @-> returning (ptr (lift_typ Storage.t)))
  let calc_text_size =
    foreign "igCalcTextSize"
      ((ptr (lift_typ Vec2.t)) @-> string @-> string @-> bool @-> float
        @-> returning void)
  let color_convert_u32_to_float4 =
    foreign "igColorConvertU32ToFloat4"
      ((ptr (lift_typ Vec4.t)) @-> (lift_typ u32_t) @-> returning void)
  let color_convert_float4_to_u32 =
    foreign "igColorConvertFloat4ToU32"
      ((lift_typ Vec4.t) @-> returning (lift_typ u32_t))
  let color_convert_rgb_to_hsv =
    foreign "igColorConvertRGBtoHSV"
      (float @-> float @-> float @-> (ptr float) @-> (ptr float) @->
        (ptr float) @-> returning void)
  let color_convert_hsv_to_rgb =
    foreign "igColorConvertHSVtoRGB"
      (float @-> float @-> float @-> (ptr float) @-> (ptr float) @->
        (ptr float) @-> returning void)
  let is_key_down_nil =
    foreign "igIsKeyDown_Nil" ((lift_typ Key.t) @-> returning bool)
  let is_key_pressed_bool =
    foreign "igIsKeyPressed_Bool"
      ((lift_typ Key.t) @-> bool @-> returning bool)
  let is_key_released_nil =
    foreign "igIsKeyReleased_Nil" ((lift_typ Key.t) @-> returning bool)
  let is_key_chord_pressed_nil =
    foreign "igIsKeyChordPressed_Nil"
      ((lift_typ key_chord_t) @-> returning bool)
  let get_key_pressed_amount =
    foreign "igGetKeyPressedAmount"
      ((lift_typ Key.t) @-> float @-> float @-> returning int)
  let get_key_name =
    foreign "igGetKeyName" ((lift_typ Key.t) @-> returning string)
  let set_next_frame_want_capture_keyboard =
    foreign "igSetNextFrameWantCaptureKeyboard" (bool @-> returning void)
  let is_mouse_down_nil =
    foreign "igIsMouseDown_Nil" ((lift_typ mouse_button_t) @-> returning bool)
  let is_mouse_clicked_bool =
    foreign "igIsMouseClicked_Bool"
      ((lift_typ mouse_button_t) @-> bool @-> returning bool)
  let is_mouse_released_nil =
    foreign "igIsMouseReleased_Nil"
      ((lift_typ mouse_button_t) @-> returning bool)
  let is_mouse_double_clicked_nil =
    foreign "igIsMouseDoubleClicked_Nil"
      ((lift_typ mouse_button_t) @-> returning bool)
  let get_mouse_clicked_count =
    foreign "igGetMouseClickedCount"
      ((lift_typ mouse_button_t) @-> returning int)
  let is_mouse_hovering_rect =
    foreign "igIsMouseHoveringRect"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> bool @-> returning bool)
  let is_mouse_pos_valid =
    foreign "igIsMousePosValid" ((ptr (lift_typ Vec2.t)) @-> returning bool)
  let is_any_mouse_down = foreign "igIsAnyMouseDown" (void @-> returning bool)
  let get_mouse_pos =
    foreign "igGetMousePos" ((ptr (lift_typ Vec2.t)) @-> returning void)
  let get_mouse_pos_on_opening_current_popup =
    foreign "igGetMousePosOnOpeningCurrentPopup"
      ((ptr (lift_typ Vec2.t)) @-> returning void)
  let is_mouse_dragging =
    foreign "igIsMouseDragging"
      ((lift_typ mouse_button_t) @-> float @-> returning bool)
  let get_mouse_drag_delta =
    foreign "igGetMouseDragDelta"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ mouse_button_t) @-> float
        @-> returning void)
  let reset_mouse_drag_delta =
    foreign "igResetMouseDragDelta"
      ((lift_typ mouse_button_t) @-> returning void)
  let get_mouse_cursor =
    foreign "igGetMouseCursor" (void @-> returning (lift_typ mouse_cursor_t))
  let set_mouse_cursor =
    foreign "igSetMouseCursor" ((lift_typ mouse_cursor_t) @-> returning void)
  let set_next_frame_want_capture_mouse =
    foreign "igSetNextFrameWantCaptureMouse" (bool @-> returning void)
  let get_clipboard_text =
    foreign "igGetClipboardText" (void @-> returning string)
  let set_clipboard_text =
    foreign "igSetClipboardText" (string @-> returning void)
  let load_ini_settings_from_disk =
    foreign "igLoadIniSettingsFromDisk" (string @-> returning void)
  let load_ini_settings_from_memory =
    foreign "igLoadIniSettingsFromMemory"
      (string @-> (lift_typ int_as_size_t) @-> returning void)
  let save_ini_settings_to_disk =
    foreign "igSaveIniSettingsToDisk" (string @-> returning void)
  let save_ini_settings_to_memory =
    foreign "igSaveIniSettingsToMemory"
      ((ptr (lift_typ int_as_size_t)) @-> returning string)
  let debug_text_encoding =
    foreign "igDebugTextEncoding" (string @-> returning void)
  let debug_flash_style_color =
    foreign "igDebugFlashStyleColor" ((lift_typ col_t) @-> returning void)
  let debug_start_item_picker =
    foreign "igDebugStartItemPicker" (void @-> returning void)
  let debug_check_version_and_data_layout =
    foreign "igDebugCheckVersionAndDataLayout"
      (string @-> (lift_typ int_as_size_t) @-> (lift_typ int_as_size_t) @->
        (lift_typ int_as_size_t) @-> (lift_typ int_as_size_t) @->
        (lift_typ int_as_size_t) @-> (lift_typ int_as_size_t)
        @-> returning bool)
  let set_allocator_functions =
    foreign "igSetAllocatorFunctions"
      (mem_alloc_func_t @-> mem_free_func_t @-> (ptr void) @-> returning void)
  let get_allocator_functions =
    foreign "igGetAllocatorFunctions"
      ((ptr (lift_typ mem_alloc_func_t)) @-> (ptr (lift_typ mem_free_func_t))
        @-> (ptr (ptr void)) @-> returning void)
  let mem_alloc =
    foreign "igMemAlloc" ((lift_typ int_as_size_t) @-> returning (ptr void))
  let mem_free = foreign "igMemFree" ((ptr void) @-> returning void)
  let get_platform_io =
    foreign "igGetPlatformIO"
      (void @-> returning (ptr (lift_typ PlatformIo.t)))
  let update_platform_windows =
    foreign "igUpdatePlatformWindows" (void @-> returning void)
  let render_platform_windows_default =
    foreign "igRenderPlatformWindowsDefault"
      ((ptr void) @-> (ptr void) @-> returning void)
  let destroy_platform_windows =
    foreign "igDestroyPlatformWindows" (void @-> returning void)
  let find_viewport_by_id =
    foreign "igFindViewportByID"
      ((lift_typ id_t) @-> returning (ptr (lift_typ Viewport.t)))
  let find_viewport_by_platform_handle =
    foreign "igFindViewportByPlatformHandle"
      ((ptr void) @-> returning (ptr (lift_typ Viewport.t)))
  module ImGuiTableSortSpecs = struct
    let im_table_sort_specs =
      foreign "ImGuiTableSortSpecs_ImGuiTableSortSpecs"
        (void @-> returning (ptr (lift_typ TableSortSpecs.t)))
    let destroy =
      foreign "ImGuiTableSortSpecs_destroy"
        ((ptr (lift_typ TableSortSpecs.t)) @-> returning void)
  end
  
  module ImGuiTableColumnSortSpecs = struct
    let im_table_column_sort_specs =
      foreign "ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs"
        (void @-> returning (ptr (lift_typ TableColumnSortSpecs.t)))
    let destroy =
      foreign "ImGuiTableColumnSortSpecs_destroy"
        ((ptr (lift_typ TableColumnSortSpecs.t)) @-> returning void)
  end
  
  module ImGuiStyle = struct
    let im_style =
      foreign "ImGuiStyle_ImGuiStyle"
        (void @-> returning (ptr (lift_typ Style.t)))
    let destroy =
      foreign "ImGuiStyle_destroy"
        ((ptr (lift_typ Style.t)) @-> returning void)
    let scale_all_sizes =
      foreign "ImGuiStyle_ScaleAllSizes"
        ((ptr (lift_typ Style.t)) @-> float @-> returning void)
  end
  
  module ImGuiIO = struct
    let add_key_event =
      foreign "ImGuiIO_AddKeyEvent"
        ((ptr (lift_typ Io.t)) @-> (lift_typ Key.t) @-> bool
          @-> returning void)
    let add_key_analog_event =
      foreign "ImGuiIO_AddKeyAnalogEvent"
        ((ptr (lift_typ Io.t)) @-> (lift_typ Key.t) @-> bool @-> float
          @-> returning void)
    let add_mouse_pos_event =
      foreign "ImGuiIO_AddMousePosEvent"
        ((ptr (lift_typ Io.t)) @-> float @-> float @-> returning void)
    let add_mouse_button_event =
      foreign "ImGuiIO_AddMouseButtonEvent"
        ((ptr (lift_typ Io.t)) @-> int @-> bool @-> returning void)
    let add_mouse_wheel_event =
      foreign "ImGuiIO_AddMouseWheelEvent"
        ((ptr (lift_typ Io.t)) @-> float @-> float @-> returning void)
    let add_mouse_source_event =
      foreign "ImGuiIO_AddMouseSourceEvent"
        ((ptr (lift_typ Io.t)) @-> (lift_typ MouseSource.t) @-> returning void)
    let add_mouse_viewport_event =
      foreign "ImGuiIO_AddMouseViewportEvent"
        ((ptr (lift_typ Io.t)) @-> (lift_typ id_t) @-> returning void)
    let add_focus_event =
      foreign "ImGuiIO_AddFocusEvent"
        ((ptr (lift_typ Io.t)) @-> bool @-> returning void)
    let add_input_character =
      foreign "ImGuiIO_AddInputCharacter"
        ((ptr (lift_typ Io.t)) @-> (lift_typ int_as_uint) @-> returning void)
    let add_input_character_utf16 =
      foreign "ImGuiIO_AddInputCharacterUTF16"
        ((ptr (lift_typ Io.t)) @-> (lift_typ wchar16_t) @-> returning void)
    let add_input_characters_utf8 =
      foreign "ImGuiIO_AddInputCharactersUTF8"
        ((ptr (lift_typ Io.t)) @-> string @-> returning void)
    let set_key_event_native_data =
      foreign "ImGuiIO_SetKeyEventNativeData"
        ((ptr (lift_typ Io.t)) @-> (lift_typ Key.t) @-> int @-> int @-> int
          @-> returning void)
    let set_app_accepting_events =
      foreign "ImGuiIO_SetAppAcceptingEvents"
        ((ptr (lift_typ Io.t)) @-> bool @-> returning void)
    let clear_events_queue =
      foreign "ImGuiIO_ClearEventsQueue"
        ((ptr (lift_typ Io.t)) @-> returning void)
    let clear_input_keys =
      foreign "ImGuiIO_ClearInputKeys"
        ((ptr (lift_typ Io.t)) @-> returning void)
    let im_io =
      foreign "ImGuiIO_ImGuiIO" (void @-> returning (ptr (lift_typ Io.t)))
    let destroy =
      foreign "ImGuiIO_destroy" ((ptr (lift_typ Io.t)) @-> returning void)
  end
  
  module ImGuiInputTextCallbackData = struct
    let im_input_text_callback_data =
      foreign "ImGuiInputTextCallbackData_ImGuiInputTextCallbackData"
        (void @-> returning (ptr (lift_typ InputTextCallbackData.t)))
    let destroy =
      foreign "ImGuiInputTextCallbackData_destroy"
        ((ptr (lift_typ InputTextCallbackData.t)) @-> returning void)
    let delete_chars =
      foreign "ImGuiInputTextCallbackData_DeleteChars"
        ((ptr (lift_typ InputTextCallbackData.t)) @-> int @-> int
          @-> returning void)
    let insert_chars =
      foreign "ImGuiInputTextCallbackData_InsertChars"
        ((ptr (lift_typ InputTextCallbackData.t)) @-> int @-> string @-> string
          @-> returning void)
    let select_all =
      foreign "ImGuiInputTextCallbackData_SelectAll"
        ((ptr (lift_typ InputTextCallbackData.t)) @-> returning void)
    let clear_selection =
      foreign "ImGuiInputTextCallbackData_ClearSelection"
        ((ptr (lift_typ InputTextCallbackData.t)) @-> returning void)
    let has_selection =
      foreign "ImGuiInputTextCallbackData_HasSelection"
        ((ptr (lift_typ InputTextCallbackData.t)) @-> returning bool)
  end
  
  module ImGuiWindowClass = struct
    let im_window_class =
      foreign "ImGuiWindowClass_ImGuiWindowClass"
        (void @-> returning (ptr (lift_typ WindowClass.t)))
    let destroy =
      foreign "ImGuiWindowClass_destroy"
        ((ptr (lift_typ WindowClass.t)) @-> returning void)
  end
  
  module ImGuiPayload = struct
    let im_payload =
      foreign "ImGuiPayload_ImGuiPayload"
        (void @-> returning (ptr (lift_typ Payload.t)))
    let destroy =
      foreign "ImGuiPayload_destroy"
        ((ptr (lift_typ Payload.t)) @-> returning void)
    let clear =
      foreign "ImGuiPayload_Clear"
        ((ptr (lift_typ Payload.t)) @-> returning void)
    let is_data_type =
      foreign "ImGuiPayload_IsDataType"
        ((ptr (lift_typ Payload.t)) @-> string @-> returning bool)
    let is_preview =
      foreign "ImGuiPayload_IsPreview"
        ((ptr (lift_typ Payload.t)) @-> returning bool)
    let is_delivery =
      foreign "ImGuiPayload_IsDelivery"
        ((ptr (lift_typ Payload.t)) @-> returning bool)
  end
  
  module ImGuiOnceUponAFrame = struct
    let im_once_upon_a_frame =
      foreign "ImGuiOnceUponAFrame_ImGuiOnceUponAFrame"
        (void @-> returning (ptr (lift_typ OnceUponAFrame.t)))
    let destroy =
      foreign "ImGuiOnceUponAFrame_destroy"
        ((ptr (lift_typ OnceUponAFrame.t)) @-> returning void)
  end
  
  module ImGuiTextFilter = struct
    let im_text_filter =
      foreign "ImGuiTextFilter_ImGuiTextFilter"
        (string @-> returning (ptr (lift_typ TextFilter.t)))
    let destroy =
      foreign "ImGuiTextFilter_destroy"
        ((ptr (lift_typ TextFilter.t)) @-> returning void)
    let draw =
      foreign "ImGuiTextFilter_Draw"
        ((ptr (lift_typ TextFilter.t)) @-> string @-> float @-> returning bool)
    let pass_filter =
      foreign "ImGuiTextFilter_PassFilter"
        ((ptr (lift_typ TextFilter.t)) @-> string @-> string
          @-> returning bool)
    let build =
      foreign "ImGuiTextFilter_Build"
        ((ptr (lift_typ TextFilter.t)) @-> returning void)
    let clear =
      foreign "ImGuiTextFilter_Clear"
        ((ptr (lift_typ TextFilter.t)) @-> returning void)
    let is_active =
      foreign "ImGuiTextFilter_IsActive"
        ((ptr (lift_typ TextFilter.t)) @-> returning bool)
  end
  
  module ImGuiTextRange = struct
    let nil =
      foreign "ImGuiTextRange_ImGuiTextRange_Nil"
        (void @-> returning (ptr (lift_typ TextRange.t)))
    let destroy =
      foreign "ImGuiTextRange_destroy"
        ((ptr (lift_typ TextRange.t)) @-> returning void)
    let str =
      foreign "ImGuiTextRange_ImGuiTextRange_Str"
        (string @-> string @-> returning (ptr (lift_typ TextRange.t)))
    let empty =
      foreign "ImGuiTextRange_empty"
        ((ptr (lift_typ TextRange.t)) @-> returning bool)
    let split =
      foreign "ImGuiTextRange_split"
        ((ptr (lift_typ TextRange.t)) @-> char @->
          (ptr (lift_typ Vector_ImTextRange.t)) @-> returning void)let appendf =
                                                                    foreign
                                                                    "ImGuiTextBuffer_appendf"
                                                                    ((ptr (lift_typ TextBuffer.t)) @-> string @-> returning void)
  end
  
  module ImGuiTextBuffer = struct
    let im_text_buffer =
      foreign "ImGuiTextBuffer_ImGuiTextBuffer"
        (void @-> returning (ptr (lift_typ TextBuffer.t)))
    let destroy =
      foreign "ImGuiTextBuffer_destroy"
        ((ptr (lift_typ TextBuffer.t)) @-> returning void)
    let begin_ =
      foreign "ImGuiTextBuffer_begin"
        ((ptr (lift_typ TextBuffer.t)) @-> returning string)
    let end_ =
      foreign "ImGuiTextBuffer_end"
        ((ptr (lift_typ TextBuffer.t)) @-> returning string)
    let size =
      foreign "ImGuiTextBuffer_size"
        ((ptr (lift_typ TextBuffer.t)) @-> returning int)
    let empty =
      foreign "ImGuiTextBuffer_empty"
        ((ptr (lift_typ TextBuffer.t)) @-> returning bool)
    let clear =
      foreign "ImGuiTextBuffer_clear"
        ((ptr (lift_typ TextBuffer.t)) @-> returning void)
    let reserve =
      foreign "ImGuiTextBuffer_reserve"
        ((ptr (lift_typ TextBuffer.t)) @-> int @-> returning void)
    let c_str =
      foreign "ImGuiTextBuffer_c_str"
        ((ptr (lift_typ TextBuffer.t)) @-> returning string)
    let append =
      foreign "ImGuiTextBuffer_append"
        ((ptr (lift_typ TextBuffer.t)) @-> string @-> string
          @-> returning void)
    let appendfv =
      foreign "ImGuiTextBuffer_appendfv"
        ((ptr (lift_typ TextBuffer.t)) @-> string @-> (lift_typ va_list_t)
          @-> returning void)
  end
  
  module ImGuiStoragePair = struct
    let int_ =
      foreign "ImGuiStoragePair_ImGuiStoragePair_Int"
        ((lift_typ id_t) @-> int @-> returning (ptr (lift_typ StoragePair.t)))
    let destroy =
      foreign "ImGuiStoragePair_destroy"
        ((ptr (lift_typ StoragePair.t)) @-> returning void)
    let float_ =
      foreign "ImGuiStoragePair_ImGuiStoragePair_Float"
        ((lift_typ id_t) @-> float
          @-> returning (ptr (lift_typ StoragePair.t)))
    let ptr_ =
      foreign "ImGuiStoragePair_ImGuiStoragePair_Ptr"
        ((lift_typ id_t) @-> (ptr void)
          @-> returning (ptr (lift_typ StoragePair.t)))
  end
  
  module ImGuiStorage = struct
    let clear =
      foreign "ImGuiStorage_Clear"
        ((ptr (lift_typ Storage.t)) @-> returning void)
    let get_int =
      foreign "ImGuiStorage_GetInt"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> int
          @-> returning int)
    let set_int =
      foreign "ImGuiStorage_SetInt"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> int
          @-> returning void)
    let get_bool =
      foreign "ImGuiStorage_GetBool"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> bool
          @-> returning bool)
    let set_bool =
      foreign "ImGuiStorage_SetBool"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> bool
          @-> returning void)
    let get_float =
      foreign "ImGuiStorage_GetFloat"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> float
          @-> returning float)
    let set_float =
      foreign "ImGuiStorage_SetFloat"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> float
          @-> returning void)
    let get_void_ptr =
      foreign "ImGuiStorage_GetVoidPtr"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t)
          @-> returning (ptr void))
    let set_void_ptr =
      foreign "ImGuiStorage_SetVoidPtr"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> (ptr void)
          @-> returning void)
    let get_int_ref =
      foreign "ImGuiStorage_GetIntRef"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> int
          @-> returning (ptr int))
    let get_bool_ref =
      foreign "ImGuiStorage_GetBoolRef"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> bool
          @-> returning (ptr bool))
    let get_float_ref =
      foreign "ImGuiStorage_GetFloatRef"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> float
          @-> returning (ptr float))
    let get_void_ptr_ref =
      foreign "ImGuiStorage_GetVoidPtrRef"
        ((ptr (lift_typ Storage.t)) @-> (lift_typ id_t) @-> (ptr void)
          @-> returning (ptr (ptr void)))
    let build_sort_by_key =
      foreign "ImGuiStorage_BuildSortByKey"
        ((ptr (lift_typ Storage.t)) @-> returning void)
    let set_all_int =
      foreign "ImGuiStorage_SetAllInt"
        ((ptr (lift_typ Storage.t)) @-> int @-> returning void)
  end
  
  module ImGuiListClipper = struct
    let im_list_clipper =
      foreign "ImGuiListClipper_ImGuiListClipper"
        (void @-> returning (ptr (lift_typ ListClipper.t)))
    let destroy =
      foreign "ImGuiListClipper_destroy"
        ((ptr (lift_typ ListClipper.t)) @-> returning void)
    let begin_ =
      foreign "ImGuiListClipper_Begin"
        ((ptr (lift_typ ListClipper.t)) @-> int @-> float @-> returning void)
    let end_ =
      foreign "ImGuiListClipper_End"
        ((ptr (lift_typ ListClipper.t)) @-> returning void)
    let step =
      foreign "ImGuiListClipper_Step"
        ((ptr (lift_typ ListClipper.t)) @-> returning bool)
    let include_item_by_index =
      foreign "ImGuiListClipper_IncludeItemByIndex"
        ((ptr (lift_typ ListClipper.t)) @-> int @-> returning void)
    let include_items_by_index =
      foreign "ImGuiListClipper_IncludeItemsByIndex"
        ((ptr (lift_typ ListClipper.t)) @-> int @-> int @-> returning void)
  end
  
  module ImColor = struct
    let nil =
      foreign "ImColor_ImColor_Nil"
        (void @-> returning (ptr (lift_typ Color.t)))
    let destroy =
      foreign "ImColor_destroy" ((ptr (lift_typ Color.t)) @-> returning void)
    let float_ =
      foreign "ImColor_ImColor_Float"
        (float @-> float @-> float @-> float
          @-> returning (ptr (lift_typ Color.t)))
    let vec4 =
      foreign "ImColor_ImColor_Vec4"
        ((lift_typ Vec4.t) @-> returning (ptr (lift_typ Color.t)))
    let int_ =
      foreign "ImColor_ImColor_Int"
        (int @-> int @-> int @-> int @-> returning (ptr (lift_typ Color.t)))
    let u32 =
      foreign "ImColor_ImColor_U32"
        ((lift_typ u32_t) @-> returning (ptr (lift_typ Color.t)))
    let set_hsv =
      foreign "ImColor_SetHSV"
        ((ptr (lift_typ Color.t)) @-> float @-> float @-> float @-> float
          @-> returning void)
    let hsv =
      foreign "ImColor_HSV"
        ((ptr (lift_typ Color.t)) @-> float @-> float @-> float @-> float
          @-> returning void)
  end
  
  module ImDrawCmd = struct
    let im_draw_cmd =
      foreign "ImDrawCmd_ImDrawCmd"
        (void @-> returning (ptr (lift_typ DrawCmd.t)))
    let destroy =
      foreign "ImDrawCmd_destroy"
        ((ptr (lift_typ DrawCmd.t)) @-> returning void)
    let get_tex_id =
      foreign "ImDrawCmd_GetTexID"
        ((ptr (lift_typ DrawCmd.t)) @-> returning (lift_typ texture_id_t))
  end
  
  module ImDrawListSplitter = struct
    let im_draw_list_splitter =
      foreign "ImDrawListSplitter_ImDrawListSplitter"
        (void @-> returning (ptr (lift_typ DrawListSplitter.t)))
    let destroy =
      foreign "ImDrawListSplitter_destroy"
        ((ptr (lift_typ DrawListSplitter.t)) @-> returning void)
    let clear =
      foreign "ImDrawListSplitter_Clear"
        ((ptr (lift_typ DrawListSplitter.t)) @-> returning void)
    let clear_free_memory =
      foreign "ImDrawListSplitter_ClearFreeMemory"
        ((ptr (lift_typ DrawListSplitter.t)) @-> returning void)
    let split =
      foreign "ImDrawListSplitter_Split"
        ((ptr (lift_typ DrawListSplitter.t)) @-> (ptr (lift_typ DrawList.t))
          @-> int @-> returning void)
    let merge =
      foreign "ImDrawListSplitter_Merge"
        ((ptr (lift_typ DrawListSplitter.t)) @-> (ptr (lift_typ DrawList.t))
          @-> returning void)
    let set_current_channel =
      foreign "ImDrawListSplitter_SetCurrentChannel"
        ((ptr (lift_typ DrawListSplitter.t)) @-> (ptr (lift_typ DrawList.t))
          @-> int @-> returning void)
  end
  
  module ImDrawList = struct
    let im_draw_list =
      foreign "ImDrawList_ImDrawList"
        ((ptr (lift_typ DrawListSharedData.t))
          @-> returning (ptr (lift_typ DrawList.t)))
    let destroy =
      foreign "ImDrawList_destroy"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let push_clip_rect =
      foreign "ImDrawList_PushClipRect"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> bool @-> returning void)
    let push_clip_rect_full_screen =
      foreign "ImDrawList_PushClipRectFullScreen"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let pop_clip_rect =
      foreign "ImDrawList_PopClipRect"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let push_texture_id =
      foreign "ImDrawList_PushTextureID"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ texture_id_t)
          @-> returning void)
    let pop_texture_id =
      foreign "ImDrawList_PopTextureID"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let get_clip_rect_min =
      foreign "ImDrawList_GetClipRectMin"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ DrawList.t))
          @-> returning void)
    let get_clip_rect_max =
      foreign "ImDrawList_GetClipRectMax"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ DrawList.t))
          @-> returning void)
    let add_line =
      foreign "ImDrawList_AddLine"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> float @-> returning void)
    let add_rect =
      foreign "ImDrawList_AddRect"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> float @->
          (lift_typ draw_flags_t) @-> float @-> returning void)
    let add_rect_filled =
      foreign "ImDrawList_AddRectFilled"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> float @->
          (lift_typ draw_flags_t) @-> returning void)
    let add_rect_filled_multi_color =
      foreign "ImDrawList_AddRectFilledMultiColor"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> (lift_typ u32_t) @->
          (lift_typ u32_t) @-> (lift_typ u32_t) @-> returning void)
    let add_quad =
      foreign "ImDrawList_AddQuad"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ u32_t) @-> float @-> returning void)
    let add_quad_filled =
      foreign "ImDrawList_AddQuadFilled"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ u32_t) @-> returning void)
    let add_triangle =
      foreign "ImDrawList_AddTriangle"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ u32_t) @->
          float @-> returning void)
    let add_triangle_filled =
      foreign "ImDrawList_AddTriangleFilled"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ u32_t)
          @-> returning void)
    let add_circle =
      foreign "ImDrawList_AddCircle"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> float @->
          (lift_typ u32_t) @-> int @-> float @-> returning void)
    let add_circle_filled =
      foreign "ImDrawList_AddCircleFilled"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> float @->
          (lift_typ u32_t) @-> int @-> returning void)
    let add_ngon =
      foreign "ImDrawList_AddNgon"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> float @->
          (lift_typ u32_t) @-> int @-> float @-> returning void)
    let add_ngon_filled =
      foreign "ImDrawList_AddNgonFilled"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> float @->
          (lift_typ u32_t) @-> int @-> returning void)
    let add_ellipse =
      foreign "ImDrawList_AddEllipse"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> float @-> int @-> float
          @-> returning void)
    let add_ellipse_filled =
      foreign "ImDrawList_AddEllipseFilled"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> float @-> int
          @-> returning void)
    let add_text_vec2 =
      foreign "ImDrawList_AddText_Vec2"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> (lift_typ u32_t)
          @-> string @-> string @-> returning void)
    let add_text_font_ptr =
      foreign "ImDrawList_AddText_FontPtr"
        ((ptr (lift_typ DrawList.t)) @-> (ptr (lift_typ Font.t)) @-> float @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> string @-> string @->
          float @-> (ptr (lift_typ Vec4.t)) @-> returning void)
    let add_bezier_cubic =
      foreign "ImDrawList_AddBezierCubic"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ u32_t) @-> float @-> int @-> returning void)
    let add_bezier_quadratic =
      foreign "ImDrawList_AddBezierQuadratic"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ u32_t) @->
          float @-> int @-> returning void)
    let add_polyline =
      foreign "ImDrawList_AddPolyline"
        ((ptr (lift_typ DrawList.t)) @-> (ptr (lift_typ Vec2.t)) @-> int @->
          (lift_typ u32_t) @-> (lift_typ draw_flags_t) @-> float
          @-> returning void)
    let add_convex_poly_filled =
      foreign "ImDrawList_AddConvexPolyFilled"
        ((ptr (lift_typ DrawList.t)) @-> (ptr (lift_typ Vec2.t)) @-> int @->
          (lift_typ u32_t) @-> returning void)
    let add_concave_poly_filled =
      foreign "ImDrawList_AddConcavePolyFilled"
        ((ptr (lift_typ DrawList.t)) @-> (ptr (lift_typ Vec2.t)) @-> int @->
          (lift_typ u32_t) @-> returning void)
    let add_image =
      foreign "ImDrawList_AddImage"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ texture_id_t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> returning void)
    let add_image_quad =
      foreign "ImDrawList_AddImageQuad"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ texture_id_t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ u32_t)
          @-> returning void)
    let add_image_rounded =
      foreign "ImDrawList_AddImageRounded"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ texture_id_t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> float @->
          (lift_typ draw_flags_t) @-> returning void)
    let path_clear =
      foreign "ImDrawList_PathClear"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let path_line_to =
      foreign "ImDrawList_PathLineTo"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> returning void)
    let path_line_to_merge_duplicate =
      foreign "ImDrawList_PathLineToMergeDuplicate"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> returning void)
    let path_fill_convex =
      foreign "ImDrawList_PathFillConvex"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ u32_t) @-> returning void)
    let path_fill_concave =
      foreign "ImDrawList_PathFillConcave"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ u32_t) @-> returning void)
    let path_stroke =
      foreign "ImDrawList_PathStroke"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ u32_t) @->
          (lift_typ draw_flags_t) @-> float @-> returning void)
    let path_arc_to =
      foreign "ImDrawList_PathArcTo"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> float @-> float
          @-> float @-> int @-> returning void)
    let path_arc_to_fast =
      foreign "ImDrawList_PathArcToFast"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> float @-> int
          @-> int @-> returning void)
    let path_elliptical_arc_to =
      foreign "ImDrawList_PathEllipticalArcTo"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> float @-> float @-> float @-> int
          @-> returning void)
    let path_bezier_cubic_curve_to =
      foreign "ImDrawList_PathBezierCubicCurveTo"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> int @-> returning void)
    let path_bezier_quadratic_curve_to =
      foreign "ImDrawList_PathBezierQuadraticCurveTo"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> int @-> returning void)
    let path_rect =
      foreign "ImDrawList_PathRect"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> float @-> (lift_typ draw_flags_t)
          @-> returning void)
    let add_callback =
      foreign "ImDrawList_AddCallback"
        ((ptr (lift_typ DrawList.t)) @-> draw_callback_t @-> (ptr void)
          @-> returning void)
    let add_draw_cmd =
      foreign "ImDrawList_AddDrawCmd"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let clone_output =
      foreign "ImDrawList_CloneOutput"
        ((ptr (lift_typ DrawList.t)) @-> returning (ptr (lift_typ DrawList.t)))
    let channels_split =
      foreign "ImDrawList_ChannelsSplit"
        ((ptr (lift_typ DrawList.t)) @-> int @-> returning void)
    let channels_merge =
      foreign "ImDrawList_ChannelsMerge"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let channels_set_current =
      foreign "ImDrawList_ChannelsSetCurrent"
        ((ptr (lift_typ DrawList.t)) @-> int @-> returning void)
    let prim_reserve =
      foreign "ImDrawList_PrimReserve"
        ((ptr (lift_typ DrawList.t)) @-> int @-> int @-> returning void)
    let prim_unreserve =
      foreign "ImDrawList_PrimUnreserve"
        ((ptr (lift_typ DrawList.t)) @-> int @-> int @-> returning void)
    let prim_rect =
      foreign "ImDrawList_PrimRect"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> returning void)
    let prim_rect_uv =
      foreign "ImDrawList_PrimRectUV"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ u32_t) @-> returning void)
    let prim_quad_uv =
      foreign "ImDrawList_PrimQuadUV"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> returning void)
    let prim_write_vtx =
      foreign "ImDrawList_PrimWriteVtx"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> returning void)
    let prim_write_idx =
      foreign "ImDrawList_PrimWriteIdx"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ draw_idx_t)
          @-> returning void)
    let prim_vtx =
      foreign "ImDrawList_PrimVtx"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> returning void)
    let reset_for_new_frame =
      foreign "ImDrawList__ResetForNewFrame"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let clear_free_memory =
      foreign "ImDrawList__ClearFreeMemory"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let pop_unused_draw_cmd =
      foreign "ImDrawList__PopUnusedDrawCmd"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let try_merge_draw_cmds =
      foreign "ImDrawList__TryMergeDrawCmds"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let on_changed_clip_rect =
      foreign "ImDrawList__OnChangedClipRect"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let on_changed_texture_id =
      foreign "ImDrawList__OnChangedTextureID"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let on_changed_vtx_offset =
      foreign "ImDrawList__OnChangedVtxOffset"
        ((ptr (lift_typ DrawList.t)) @-> returning void)
    let calc_circle_auto_segment_count =
      foreign "ImDrawList__CalcCircleAutoSegmentCount"
        ((ptr (lift_typ DrawList.t)) @-> float @-> returning int)
    let path_arc_to_fast_ex =
      foreign "ImDrawList__PathArcToFastEx"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> float @-> int
          @-> int @-> int @-> returning void)
    let path_arc_to_n =
      foreign "ImDrawList__PathArcToN"
        ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> float @-> float
          @-> float @-> int @-> returning void)
  end
  
  module ImDrawData = struct
    let im_draw_data =
      foreign "ImDrawData_ImDrawData"
        (void @-> returning (ptr (lift_typ DrawData.t)))
    let destroy =
      foreign "ImDrawData_destroy"
        ((ptr (lift_typ DrawData.t)) @-> returning void)
    let clear =
      foreign "ImDrawData_Clear"
        ((ptr (lift_typ DrawData.t)) @-> returning void)
    let add_draw_list =
      foreign "ImDrawData_AddDrawList"
        ((ptr (lift_typ DrawData.t)) @-> (ptr (lift_typ DrawList.t))
          @-> returning void)
    let de_index_all_buffers =
      foreign "ImDrawData_DeIndexAllBuffers"
        ((ptr (lift_typ DrawData.t)) @-> returning void)
    let scale_clip_rects =
      foreign "ImDrawData_ScaleClipRects"
        ((ptr (lift_typ DrawData.t)) @-> (lift_typ Vec2.t) @-> returning void)
  end
  
  module ImFontConfig = struct
    let im_font_config =
      foreign "ImFontConfig_ImFontConfig"
        (void @-> returning (ptr (lift_typ FontConfig.t)))
    let destroy =
      foreign "ImFontConfig_destroy"
        ((ptr (lift_typ FontConfig.t)) @-> returning void)
  end
  
  module ImFontGlyphRangesBuilder = struct
    let im_font_glyph_ranges_builder =
      foreign "ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder"
        (void @-> returning (ptr (lift_typ FontGlyphRangesBuilder.t)))
    let destroy =
      foreign "ImFontGlyphRangesBuilder_destroy"
        ((ptr (lift_typ FontGlyphRangesBuilder.t)) @-> returning void)
    let clear =
      foreign "ImFontGlyphRangesBuilder_Clear"
        ((ptr (lift_typ FontGlyphRangesBuilder.t)) @-> returning void)
    let get_bit =
      foreign "ImFontGlyphRangesBuilder_GetBit"
        ((ptr (lift_typ FontGlyphRangesBuilder.t)) @-> (lift_typ int_as_size_t)
          @-> returning bool)
    let set_bit =
      foreign "ImFontGlyphRangesBuilder_SetBit"
        ((ptr (lift_typ FontGlyphRangesBuilder.t)) @-> (lift_typ int_as_size_t)
          @-> returning void)
    let add_char =
      foreign "ImFontGlyphRangesBuilder_AddChar"
        ((ptr (lift_typ FontGlyphRangesBuilder.t)) @-> (lift_typ wchar_t)
          @-> returning void)
    let add_text =
      foreign "ImFontGlyphRangesBuilder_AddText"
        ((ptr (lift_typ FontGlyphRangesBuilder.t)) @-> string @-> string
          @-> returning void)
    let add_ranges =
      foreign "ImFontGlyphRangesBuilder_AddRanges"
        ((ptr (lift_typ FontGlyphRangesBuilder.t)) @-> (ptr (lift_typ wchar_t))
          @-> returning void)
    let build_ranges =
      foreign "ImFontGlyphRangesBuilder_BuildRanges"
        ((ptr (lift_typ FontGlyphRangesBuilder.t)) @->
          (ptr (lift_typ Vector_ImWchar.t)) @-> returning void)
  end
  
  module ImFontAtlasCustomRect = struct
    let im_font_atlas_custom_rect =
      foreign "ImFontAtlasCustomRect_ImFontAtlasCustomRect"
        (void @-> returning (ptr (lift_typ FontAtlasCustomRect.t)))
    let destroy =
      foreign "ImFontAtlasCustomRect_destroy"
        ((ptr (lift_typ FontAtlasCustomRect.t)) @-> returning void)
    let is_packed =
      foreign "ImFontAtlasCustomRect_IsPacked"
        ((ptr (lift_typ FontAtlasCustomRect.t)) @-> returning bool)
  end
  
  module ImFontAtlas = struct
    let im_font_atlas =
      foreign "ImFontAtlas_ImFontAtlas"
        (void @-> returning (ptr (lift_typ FontAtlas.t)))
    let destroy =
      foreign "ImFontAtlas_destroy"
        ((ptr (lift_typ FontAtlas.t)) @-> returning void)
    let add_font =
      foreign "ImFontAtlas_AddFont"
        ((ptr (lift_typ FontAtlas.t)) @-> (ptr (lift_typ FontConfig.t))
          @-> returning (ptr (lift_typ Font.t)))
    let add_font_default =
      foreign "ImFontAtlas_AddFontDefault"
        ((ptr (lift_typ FontAtlas.t)) @-> (ptr (lift_typ FontConfig.t))
          @-> returning (ptr (lift_typ Font.t)))
    let add_font_from_file_ttf =
      foreign "ImFontAtlas_AddFontFromFileTTF"
        ((ptr (lift_typ FontAtlas.t)) @-> string @-> float @->
          (ptr (lift_typ FontConfig.t)) @-> (ptr (lift_typ wchar_t))
          @-> returning (ptr (lift_typ Font.t)))
    let add_font_from_memory_ttf =
      foreign "ImFontAtlas_AddFontFromMemoryTTF"
        ((ptr (lift_typ FontAtlas.t)) @-> (ptr void) @-> int @-> float @->
          (ptr (lift_typ FontConfig.t)) @-> (ptr (lift_typ wchar_t))
          @-> returning (ptr (lift_typ Font.t)))
    let add_font_from_memory_compressed_ttf =
      foreign "ImFontAtlas_AddFontFromMemoryCompressedTTF"
        ((ptr (lift_typ FontAtlas.t)) @-> (ptr void) @-> int @-> float @->
          (ptr (lift_typ FontConfig.t)) @-> (ptr (lift_typ wchar_t))
          @-> returning (ptr (lift_typ Font.t)))
    let add_font_from_memory_compressed_base85_ttf =
      foreign "ImFontAtlas_AddFontFromMemoryCompressedBase85TTF"
        ((ptr (lift_typ FontAtlas.t)) @-> string @-> float @->
          (ptr (lift_typ FontConfig.t)) @-> (ptr (lift_typ wchar_t))
          @-> returning (ptr (lift_typ Font.t)))
    let clear_input_data =
      foreign "ImFontAtlas_ClearInputData"
        ((ptr (lift_typ FontAtlas.t)) @-> returning void)
    let clear_tex_data =
      foreign "ImFontAtlas_ClearTexData"
        ((ptr (lift_typ FontAtlas.t)) @-> returning void)
    let clear_fonts =
      foreign "ImFontAtlas_ClearFonts"
        ((ptr (lift_typ FontAtlas.t)) @-> returning void)
    let clear =
      foreign "ImFontAtlas_Clear"
        ((ptr (lift_typ FontAtlas.t)) @-> returning void)
    let build =
      foreign "ImFontAtlas_Build"
        ((ptr (lift_typ FontAtlas.t)) @-> returning bool)
    let get_tex_data_as_alpha8 =
      foreign "ImFontAtlas_GetTexDataAsAlpha8"
        ((ptr (lift_typ FontAtlas.t)) @-> (ptr (ptr (lift_typ int_as_uchar)))
          @-> (ptr int) @-> (ptr int) @-> (ptr int) @-> returning void)
    let get_tex_data_as_rgb_a32 =
      foreign "ImFontAtlas_GetTexDataAsRGBA32"
        ((ptr (lift_typ FontAtlas.t)) @-> (ptr (ptr (lift_typ int_as_uchar)))
          @-> (ptr int) @-> (ptr int) @-> (ptr int) @-> returning void)
    let is_built =
      foreign "ImFontAtlas_IsBuilt"
        ((ptr (lift_typ FontAtlas.t)) @-> returning bool)
    let set_tex_id =
      foreign "ImFontAtlas_SetTexID"
        ((ptr (lift_typ FontAtlas.t)) @-> (lift_typ texture_id_t)
          @-> returning void)
    let get_glyph_ranges_default =
      foreign "ImFontAtlas_GetGlyphRangesDefault"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ wchar_t)))
    let get_glyph_ranges_greek =
      foreign "ImFontAtlas_GetGlyphRangesGreek"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ wchar_t)))
    let get_glyph_ranges_korean =
      foreign "ImFontAtlas_GetGlyphRangesKorean"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ wchar_t)))
    let get_glyph_ranges_japanese =
      foreign "ImFontAtlas_GetGlyphRangesJapanese"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ wchar_t)))
    let get_glyph_ranges_chinese_full =
      foreign "ImFontAtlas_GetGlyphRangesChineseFull"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ wchar_t)))
    let get_glyph_ranges_chinese_simplified_common =
      foreign "ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ wchar_t)))
    let get_glyph_ranges_cyrillic =
      foreign "ImFontAtlas_GetGlyphRangesCyrillic"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ wchar_t)))
    let get_glyph_ranges_thai =
      foreign "ImFontAtlas_GetGlyphRangesThai"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ wchar_t)))
    let get_glyph_ranges_vietnamese =
      foreign "ImFontAtlas_GetGlyphRangesVietnamese"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ wchar_t)))
    let add_custom_rect_regular =
      foreign "ImFontAtlas_AddCustomRectRegular"
        ((ptr (lift_typ FontAtlas.t)) @-> int @-> int @-> returning int)
    let add_custom_rect_font_glyph =
      foreign "ImFontAtlas_AddCustomRectFontGlyph"
        ((ptr (lift_typ FontAtlas.t)) @-> (ptr (lift_typ Font.t)) @->
          (lift_typ wchar_t) @-> int @-> int @-> float @-> (lift_typ Vec2.t)
          @-> returning int)
    let get_custom_rect_by_index =
      foreign "ImFontAtlas_GetCustomRectByIndex"
        ((ptr (lift_typ FontAtlas.t)) @-> int
          @-> returning (ptr (lift_typ FontAtlasCustomRect.t)))
    let calc_custom_rect_uv =
      foreign "ImFontAtlas_CalcCustomRectUV"
        ((ptr (lift_typ FontAtlas.t)) @->
          (ptr (lift_typ FontAtlasCustomRect.t)) @-> (ptr (lift_typ Vec2.t))
          @-> (ptr (lift_typ Vec2.t)) @-> returning void)
    let get_mouse_cursor_tex_data =
      foreign "ImFontAtlas_GetMouseCursorTexData"
        ((ptr (lift_typ FontAtlas.t)) @-> (lift_typ mouse_cursor_t) @->
          (ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Vec2.t)) @->
          (ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Vec2.t))
          @-> returning bool)
  end
  
  module ImFont = struct
    let im_font =
      foreign "ImFont_ImFont" (void @-> returning (ptr (lift_typ Font.t)))
    let destroy =
      foreign "ImFont_destroy" ((ptr (lift_typ Font.t)) @-> returning void)
    let find_glyph =
      foreign "ImFont_FindGlyph"
        ((ptr (lift_typ Font.t)) @-> (lift_typ wchar_t)
          @-> returning (ptr (lift_typ FontGlyph.t)))
    let find_glyph_no_fallback =
      foreign "ImFont_FindGlyphNoFallback"
        ((ptr (lift_typ Font.t)) @-> (lift_typ wchar_t)
          @-> returning (ptr (lift_typ FontGlyph.t)))
    let get_char_advance =
      foreign "ImFont_GetCharAdvance"
        ((ptr (lift_typ Font.t)) @-> (lift_typ wchar_t) @-> returning float)
    let is_loaded =
      foreign "ImFont_IsLoaded" ((ptr (lift_typ Font.t)) @-> returning bool)
    let get_debug_name =
      foreign "ImFont_GetDebugName"
        ((ptr (lift_typ Font.t)) @-> returning string)
    let calc_text_size_a =
      foreign "ImFont_CalcTextSizeA"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Font.t)) @-> float @->
          float @-> float @-> string @-> string @-> (ptr string)
          @-> returning void)
    let calc_word_wrap_position_a =
      foreign "ImFont_CalcWordWrapPositionA"
        ((ptr (lift_typ Font.t)) @-> float @-> string @-> string @-> float
          @-> returning string)
    let render_char =
      foreign "ImFont_RenderChar"
        ((ptr (lift_typ Font.t)) @-> (ptr (lift_typ DrawList.t)) @-> float @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> (lift_typ wchar_t)
          @-> returning void)
    let render_text =
      foreign "ImFont_RenderText"
        ((ptr (lift_typ Font.t)) @-> (ptr (lift_typ DrawList.t)) @-> float @->
          (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> (lift_typ Vec4.t) @->
          string @-> string @-> float @-> bool @-> returning void)
    let build_lookup_table =
      foreign "ImFont_BuildLookupTable"
        ((ptr (lift_typ Font.t)) @-> returning void)
    let clear_output_data =
      foreign "ImFont_ClearOutputData"
        ((ptr (lift_typ Font.t)) @-> returning void)
    let grow_index =
      foreign "ImFont_GrowIndex"
        ((ptr (lift_typ Font.t)) @-> int @-> returning void)
    let add_glyph =
      foreign "ImFont_AddGlyph"
        ((ptr (lift_typ Font.t)) @-> (ptr (lift_typ FontConfig.t)) @->
          (lift_typ wchar_t) @-> float @-> float @-> float @-> float @-> float
          @-> float @-> float @-> float @-> float @-> returning void)
    let add_remap_char =
      foreign "ImFont_AddRemapChar"
        ((ptr (lift_typ Font.t)) @-> (lift_typ wchar_t) @-> (lift_typ wchar_t)
          @-> bool @-> returning void)
    let set_glyph_visible =
      foreign "ImFont_SetGlyphVisible"
        ((ptr (lift_typ Font.t)) @-> (lift_typ wchar_t) @-> bool
          @-> returning void)
    let is_glyph_range_unused =
      foreign "ImFont_IsGlyphRangeUnused"
        ((ptr (lift_typ Font.t)) @-> (lift_typ int_as_uint) @->
          (lift_typ int_as_uint) @-> returning bool)
  end
  
  module ImGuiViewport = struct
    let im_viewport =
      foreign "ImGuiViewport_ImGuiViewport"
        (void @-> returning (ptr (lift_typ Viewport.t)))
    let destroy =
      foreign "ImGuiViewport_destroy"
        ((ptr (lift_typ Viewport.t)) @-> returning void)
    let get_center =
      foreign "ImGuiViewport_GetCenter"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Viewport.t))
          @-> returning void)
    let get_work_center =
      foreign "ImGuiViewport_GetWorkCenter"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Viewport.t))
          @-> returning void)
  end
  
  module ImGuiPlatformIO = struct
    let im_platform_io =
      foreign "ImGuiPlatformIO_ImGuiPlatformIO"
        (void @-> returning (ptr (lift_typ PlatformIo.t)))
    let destroy =
      foreign "ImGuiPlatformIO_destroy"
        ((ptr (lift_typ PlatformIo.t)) @-> returning void)
  end
  
  module ImGuiPlatformMonitor = struct
    let im_platform_monitor =
      foreign "ImGuiPlatformMonitor_ImGuiPlatformMonitor"
        (void @-> returning (ptr (lift_typ PlatformMonitor.t)))
    let destroy =
      foreign "ImGuiPlatformMonitor_destroy"
        ((ptr (lift_typ PlatformMonitor.t)) @-> returning void)
  end
  
  module ImGuiPlatformImeData = struct
    let im_platform_ime_data =
      foreign "ImGuiPlatformImeData_ImGuiPlatformImeData"
        (void @-> returning (ptr (lift_typ PlatformImeData.t)))
    let destroy =
      foreign "ImGuiPlatformImeData_destroy"
        ((ptr (lift_typ PlatformImeData.t)) @-> returning void)
  end
  
  let im_hash_data =
    foreign "igImHashData"
      ((ptr void) @-> (lift_typ int_as_size_t) @-> (lift_typ id_t)
        @-> returning (lift_typ id_t))
  let im_hash_str =
    foreign "igImHashStr"
      (string @-> (lift_typ int_as_size_t) @-> (lift_typ id_t)
        @-> returning (lift_typ id_t))
  let im_qsort =
    foreign "igImQsort"
      ((ptr void) @-> (lift_typ int_as_size_t) @-> (lift_typ int_as_size_t) @->
        compare_func_t @-> returning void)
  let im_alpha_blend_colors =
    foreign "igImAlphaBlendColors"
      ((lift_typ u32_t) @-> (lift_typ u32_t) @-> returning (lift_typ u32_t))
  let im_is_power_of_two_int =
    foreign "igImIsPowerOfTwo_Int" (int @-> returning bool)
  let im_is_power_of_two_u64 =
    foreign "igImIsPowerOfTwo_U64" ((lift_typ u64_t) @-> returning bool)
  let im_upper_power_of_two =
    foreign "igImUpperPowerOfTwo" (int @-> returning int)
  let im_stricmp = foreign "igImStricmp" (string @-> string @-> returning int)
  let im_strnicmp =
    foreign "igImStrnicmp"
      (string @-> string @-> (lift_typ int_as_size_t) @-> returning int)
  let im_strncpy =
    foreign "igImStrncpy"
      (string @-> string @-> (lift_typ int_as_size_t) @-> returning void)
  let im_strdup = foreign "igImStrdup" (string @-> returning string)
  let im_strdupcpy =
    foreign "igImStrdupcpy"
      (string @-> (ptr (lift_typ int_as_size_t)) @-> string
        @-> returning string)
  let im_strchr_range =
    foreign "igImStrchrRange" (string @-> string @-> char @-> returning string)
  let im_streol_range =
    foreign "igImStreolRange" (string @-> string @-> returning string)
  let im_stristr =
    foreign "igImStristr"
      (string @-> string @-> string @-> string @-> returning string)
  let im_str_trim_blanks =
    foreign "igImStrTrimBlanks" (string @-> returning void)
  let im_str_skip_blank =
    foreign "igImStrSkipBlank" (string @-> returning string)
  let im_strlen_w =
    foreign "igImStrlenW" ((ptr (lift_typ wchar_t)) @-> returning int)
  let im_strbol_w =
    foreign "igImStrbolW"
      ((ptr (lift_typ wchar_t)) @-> (ptr (lift_typ wchar_t))
        @-> returning (ptr (lift_typ wchar_t)))
  let im_to_upper = foreign "igImToUpper" (char @-> returning char)
  let im_char_is_blank_a = foreign "igImCharIsBlankA" (char @-> returning bool)
  let im_char_is_blank_w =
    foreign "igImCharIsBlankW" ((lift_typ int_as_uint) @-> returning bool)
  let im_format_string =
    foreign "igImFormatString"
      (string @-> (lift_typ int_as_size_t) @-> string @-> returning int)
  let im_format_string_v =
    foreign "igImFormatStringV"
      (string @-> (lift_typ int_as_size_t) @-> string @-> (lift_typ va_list_t)
        @-> returning int)
  let im_format_string_to_temp_buffer =
    foreign "igImFormatStringToTempBuffer"
      ((ptr string) @-> (ptr string) @-> string @-> returning void)
  let im_format_string_to_temp_buffer_v =
    foreign "igImFormatStringToTempBufferV"
      ((ptr string) @-> (ptr string) @-> string @-> (lift_typ va_list_t)
        @-> returning void)
  let im_parse_format_find_start =
    foreign "igImParseFormatFindStart" (string @-> returning string)
  let im_parse_format_find_end =
    foreign "igImParseFormatFindEnd" (string @-> returning string)
  let im_parse_format_trim_decorations =
    foreign "igImParseFormatTrimDecorations"
      (string @-> string @-> (lift_typ int_as_size_t) @-> returning string)
  let im_parse_format_sanitize_for_printing =
    foreign "igImParseFormatSanitizeForPrinting"
      (string @-> string @-> (lift_typ int_as_size_t) @-> returning void)
  let im_parse_format_sanitize_for_scanning =
    foreign "igImParseFormatSanitizeForScanning"
      (string @-> string @-> (lift_typ int_as_size_t) @-> returning string)
  let im_parse_format_precision =
    foreign "igImParseFormatPrecision" (string @-> int @-> returning int)
  let im_text_char_to_utf8 =
    foreign "igImTextCharToUtf8"
      (string @-> (lift_typ int_as_uint) @-> returning string)
  let im_text_str_to_utf8 =
    foreign "igImTextStrToUtf8"
      (string @-> int @-> (ptr (lift_typ wchar_t)) @-> (ptr (lift_typ wchar_t))
        @-> returning int)
  let im_text_char_from_utf8 =
    foreign "igImTextCharFromUtf8"
      ((ptr (lift_typ int_as_uint)) @-> string @-> string @-> returning int)
  let im_text_str_from_utf8 =
    foreign "igImTextStrFromUtf8"
      ((ptr (lift_typ wchar_t)) @-> int @-> string @-> string @-> (ptr string)
        @-> returning int)
  let im_text_count_chars_from_utf8 =
    foreign "igImTextCountCharsFromUtf8" (string @-> string @-> returning int)
  let im_text_count_utf8_bytes_from_char =
    foreign "igImTextCountUtf8BytesFromChar"
      (string @-> string @-> returning int)
  let im_text_count_utf8_bytes_from_str =
    foreign "igImTextCountUtf8BytesFromStr"
      ((ptr (lift_typ wchar_t)) @-> (ptr (lift_typ wchar_t)) @-> returning int)
  let im_text_find_previous_utf8_codepoint =
    foreign "igImTextFindPreviousUtf8Codepoint"
      (string @-> string @-> returning string)
  let im_text_count_lines =
    foreign "igImTextCountLines" (string @-> string @-> returning int)
  let im_file_open =
    foreign "igImFileOpen"
      (string @-> string @-> returning (lift_typ file_handle_t))
  let im_file_close =
    foreign "igImFileClose" ((lift_typ file_handle_t) @-> returning bool)
  let im_file_get_size =
    foreign "igImFileGetSize"
      ((lift_typ file_handle_t) @-> returning (lift_typ u64_t))
  let im_file_read =
    foreign "igImFileRead"
      ((ptr void) @-> (lift_typ u64_t) @-> (lift_typ u64_t) @->
        (lift_typ file_handle_t) @-> returning (lift_typ u64_t))
  let im_file_write =
    foreign "igImFileWrite"
      ((ptr void) @-> (lift_typ u64_t) @-> (lift_typ u64_t) @->
        (lift_typ file_handle_t) @-> returning (lift_typ u64_t))
  let im_file_load_to_memory =
    foreign "igImFileLoadToMemory"
      (string @-> string @-> (ptr (lift_typ int_as_size_t)) @-> int
        @-> returning (ptr void))
  let im_pow_float =
    foreign "igImPow_Float" (float @-> float @-> returning float)
  let im_pow_double =
    foreign "igImPow_double" (float @-> float @-> returning float)
  let im_log_float = foreign "igImLog_Float" (float @-> returning float)
  let im_log_double = foreign "igImLog_double" (float @-> returning float)
  let im_abs_int = foreign "igImAbs_Int" (int @-> returning int)
  let im_abs_float = foreign "igImAbs_Float" (float @-> returning float)
  let im_abs_double = foreign "igImAbs_double" (float @-> returning float)
  let im_sign_float = foreign "igImSign_Float" (float @-> returning float)
  let im_sign_double = foreign "igImSign_double" (float @-> returning float)
  let im_rsqrt_float = foreign "igImRsqrt_Float" (float @-> returning float)
  let im_rsqrt_double = foreign "igImRsqrt_double" (float @-> returning float)
  let im_min =
    foreign "igImMin"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> returning void)
  let im_max =
    foreign "igImMax"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> returning void)
  let im_clamp =
    foreign "igImClamp"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> returning void)
  let im_lerp_vec2_float =
    foreign "igImLerp_Vec2Float"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        float @-> returning void)
  let im_lerp_vec2_vec2 =
    foreign "igImLerp_Vec2Vec2"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> returning void)
  let im_lerp_vec4 =
    foreign "igImLerp_Vec4"
      ((ptr (lift_typ Vec4.t)) @-> (lift_typ Vec4.t) @-> (lift_typ Vec4.t) @->
        float @-> returning void)
  let im_saturate = foreign "igImSaturate" (float @-> returning float)
  let im_length_sqr_vec2 =
    foreign "igImLengthSqr_Vec2" ((lift_typ Vec2.t) @-> returning float)
  let im_length_sqr_vec4 =
    foreign "igImLengthSqr_Vec4" ((lift_typ Vec4.t) @-> returning float)
  let im_inv_length =
    foreign "igImInvLength" ((lift_typ Vec2.t) @-> float @-> returning float)
  let im_trunc_float = foreign "igImTrunc_Float" (float @-> returning float)
  let im_trunc_vec2 =
    foreign "igImTrunc_Vec2"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> returning void)
  let im_floor_float = foreign "igImFloor_Float" (float @-> returning float)
  let im_floor_vec2 =
    foreign "igImFloor_Vec2"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> returning void)
  let im_mod_positive =
    foreign "igImModPositive" (int @-> int @-> returning int)
  let im_dot =
    foreign "igImDot"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> returning float)
  let im_rotate =
    foreign "igImRotate"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> float @-> float
        @-> returning void)
  let im_linear_sweep =
    foreign "igImLinearSweep" (float @-> float @-> float @-> returning float)
  let im_mul =
    foreign "igImMul"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> returning void)
  let im_is_float_above_guaranteed_integer_precision =
    foreign "igImIsFloatAboveGuaranteedIntegerPrecision"
      (float @-> returning bool)
  let im_exponential_moving_average =
    foreign "igImExponentialMovingAverage"
      (float @-> float @-> int @-> returning float)
  let im_bezier_cubic_calc =
    foreign "igImBezierCubicCalc"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> float @-> returning void)
  let im_bezier_cubic_closest_point =
    foreign "igImBezierCubicClosestPoint"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> int
        @-> returning void)
  let im_bezier_cubic_closest_point_casteljau =
    foreign "igImBezierCubicClosestPointCasteljau"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> float
        @-> returning void)
  let im_bezier_quadratic_calc =
    foreign "igImBezierQuadraticCalc"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> float @-> returning void)
  let im_line_closest_point =
    foreign "igImLineClosestPoint"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> returning void)
  let im_triangle_contains_point =
    foreign "igImTriangleContainsPoint"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> returning bool)
  let im_triangle_closest_point =
    foreign "igImTriangleClosestPoint"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> returning void)
  let im_triangle_barycentric_coords =
    foreign "igImTriangleBarycentricCoords"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (ptr float) @-> (ptr float) @-> (ptr float)
        @-> returning void)
  let im_triangle_area =
    foreign "igImTriangleArea"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> returning float)
  let im_triangle_is_clockwise =
    foreign "igImTriangleIsClockwise"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> returning bool)
  module ImVec1 = struct
    let nil =
      foreign "ImVec1_ImVec1_Nil" (void @-> returning (ptr (lift_typ Vec1.t)))
    let destroy =
      foreign "ImVec1_destroy" ((ptr (lift_typ Vec1.t)) @-> returning void)
    let float_ =
      foreign "ImVec1_ImVec1_Float"
        (float @-> returning (ptr (lift_typ Vec1.t)))
  end
  
  module ImVec2ih = struct
    let nil =
      foreign "ImVec2ih_ImVec2ih_Nil"
        (void @-> returning (ptr (lift_typ Vec2ih.t)))
    let destroy =
      foreign "ImVec2ih_destroy" ((ptr (lift_typ Vec2ih.t)) @-> returning void)
    let short =
      foreign "ImVec2ih_ImVec2ih_short"
        (short @-> short @-> returning (ptr (lift_typ Vec2ih.t)))
    let vec2 =
      foreign "ImVec2ih_ImVec2ih_Vec2"
        ((lift_typ Vec2.t) @-> returning (ptr (lift_typ Vec2ih.t)))
  end
  
  module ImRect = struct
    let nil =
      foreign "ImRect_ImRect_Nil" (void @-> returning (ptr (lift_typ Rect.t)))
    let destroy =
      foreign "ImRect_destroy" ((ptr (lift_typ Rect.t)) @-> returning void)
    let vec2 =
      foreign "ImRect_ImRect_Vec2"
        ((lift_typ Vec2.t) @-> (lift_typ Vec2.t)
          @-> returning (ptr (lift_typ Rect.t)))
    let vec4 =
      foreign "ImRect_ImRect_Vec4"
        ((lift_typ Vec4.t) @-> returning (ptr (lift_typ Rect.t)))
    let float_ =
      foreign "ImRect_ImRect_Float"
        (float @-> float @-> float @-> float
          @-> returning (ptr (lift_typ Rect.t)))
    let get_center =
      foreign "ImRect_GetCenter"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Rect.t))
          @-> returning void)
    let get_size =
      foreign "ImRect_GetSize"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Rect.t))
          @-> returning void)
    let get_width =
      foreign "ImRect_GetWidth" ((ptr (lift_typ Rect.t)) @-> returning float)
    let get_height =
      foreign "ImRect_GetHeight" ((ptr (lift_typ Rect.t)) @-> returning float)
    let get_area =
      foreign "ImRect_GetArea" ((ptr (lift_typ Rect.t)) @-> returning float)
    let get_tl =
      foreign "ImRect_GetTL"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Rect.t))
          @-> returning void)
    let get_tr =
      foreign "ImRect_GetTR"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Rect.t))
          @-> returning void)
    let get_bl =
      foreign "ImRect_GetBL"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Rect.t))
          @-> returning void)
    let get_br =
      foreign "ImRect_GetBR"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Rect.t))
          @-> returning void)
    let contains_vec2 =
      foreign "ImRect_Contains_Vec2"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Vec2.t) @-> returning bool)
    let contains_rect =
      foreign "ImRect_Contains_Rect"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Rect.t) @-> returning bool)
    let contains_with_pad =
      foreign "ImRect_ContainsWithPad"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
          @-> returning bool)
    let overlaps =
      foreign "ImRect_Overlaps"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Rect.t) @-> returning bool)
    let add_vec2 =
      foreign "ImRect_Add_Vec2"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Vec2.t) @-> returning void)
    let add_rect =
      foreign "ImRect_Add_Rect"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Rect.t) @-> returning void)
    let expand_float =
      foreign "ImRect_Expand_Float"
        ((ptr (lift_typ Rect.t)) @-> float @-> returning void)
    let expand_vec2 =
      foreign "ImRect_Expand_Vec2"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Vec2.t) @-> returning void)
    let translate =
      foreign "ImRect_Translate"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Vec2.t) @-> returning void)
    let translate_x =
      foreign "ImRect_TranslateX"
        ((ptr (lift_typ Rect.t)) @-> float @-> returning void)
    let translate_y =
      foreign "ImRect_TranslateY"
        ((ptr (lift_typ Rect.t)) @-> float @-> returning void)
    let clip_with =
      foreign "ImRect_ClipWith"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Rect.t) @-> returning void)
    let clip_with_full =
      foreign "ImRect_ClipWithFull"
        ((ptr (lift_typ Rect.t)) @-> (lift_typ Rect.t) @-> returning void)
    let floor =
      foreign "ImRect_Floor" ((ptr (lift_typ Rect.t)) @-> returning void)
    let is_inverted =
      foreign "ImRect_IsInverted" ((ptr (lift_typ Rect.t)) @-> returning bool)
    let to_vec4 =
      foreign "ImRect_ToVec4"
        ((ptr (lift_typ Vec4.t)) @-> (ptr (lift_typ Rect.t))
          @-> returning void)
  end
  
  let im_bit_array_get_storage_size_in_bytes =
    foreign "igImBitArrayGetStorageSizeInBytes"
      (int @-> returning (lift_typ int_as_size_t))
  let im_bit_array_clear_all_bits =
    foreign "igImBitArrayClearAllBits"
      ((ptr (lift_typ u32_t)) @-> int @-> returning void)
  let im_bit_array_test_bit =
    foreign "igImBitArrayTestBit"
      ((ptr (lift_typ u32_t)) @-> int @-> returning bool)
  let im_bit_array_clear_bit =
    foreign "igImBitArrayClearBit"
      ((ptr (lift_typ u32_t)) @-> int @-> returning void)
  let im_bit_array_set_bit =
    foreign "igImBitArraySetBit"
      ((ptr (lift_typ u32_t)) @-> int @-> returning void)
  let im_bit_array_set_bit_range =
    foreign "igImBitArraySetBitRange"
      ((ptr (lift_typ u32_t)) @-> int @-> int @-> returning void)
  module ImBitVector = struct
    let create =
      foreign "ImBitVector_Create"
        ((ptr (lift_typ BitVector.t)) @-> int @-> returning void)
    let clear =
      foreign "ImBitVector_Clear"
        ((ptr (lift_typ BitVector.t)) @-> returning void)
    let test_bit =
      foreign "ImBitVector_TestBit"
        ((ptr (lift_typ BitVector.t)) @-> int @-> returning bool)
    let set_bit =
      foreign "ImBitVector_SetBit"
        ((ptr (lift_typ BitVector.t)) @-> int @-> returning void)
    let clear_bit =
      foreign "ImBitVector_ClearBit"
        ((ptr (lift_typ BitVector.t)) @-> int @-> returning void)
  end
  
  module ImGuiTextIndex = struct
    let clear =
      foreign "ImGuiTextIndex_clear"
        ((ptr (lift_typ TextIndex.t)) @-> returning void)
    let size =
      foreign "ImGuiTextIndex_size"
        ((ptr (lift_typ TextIndex.t)) @-> returning int)
    let get_line_begin =
      foreign "ImGuiTextIndex_get_line_begin"
        ((ptr (lift_typ TextIndex.t)) @-> string @-> int @-> returning string)
    let get_line_end =
      foreign "ImGuiTextIndex_get_line_end"
        ((ptr (lift_typ TextIndex.t)) @-> string @-> int @-> returning string)
    let append =
      foreign "ImGuiTextIndex_append"
        ((ptr (lift_typ TextIndex.t)) @-> string @-> int @-> int
          @-> returning void)
  end
  
  module ImDrawListSharedData = struct
    let im_draw_list_shared_data =
      foreign "ImDrawListSharedData_ImDrawListSharedData"
        (void @-> returning (ptr (lift_typ DrawListSharedData.t)))
    let destroy =
      foreign "ImDrawListSharedData_destroy"
        ((ptr (lift_typ DrawListSharedData.t)) @-> returning void)
    let set_circle_tessellation_max_error =
      foreign "ImDrawListSharedData_SetCircleTessellationMaxError"
        ((ptr (lift_typ DrawListSharedData.t)) @-> float @-> returning void)
  end
  
  module ImDrawDataBuilder = struct
    let im_draw_data_builder =
      foreign "ImDrawDataBuilder_ImDrawDataBuilder"
        (void @-> returning (ptr (lift_typ DrawDataBuilder.t)))
    let destroy =
      foreign "ImDrawDataBuilder_destroy"
        ((ptr (lift_typ DrawDataBuilder.t)) @-> returning void)
  end
  
  module ImGuiStyleMod = struct
    let int_ =
      foreign "ImGuiStyleMod_ImGuiStyleMod_Int"
        ((lift_typ style_var_t) @-> int
          @-> returning (ptr (lift_typ StyleMod.t)))
    let destroy =
      foreign "ImGuiStyleMod_destroy"
        ((ptr (lift_typ StyleMod.t)) @-> returning void)
    let float_ =
      foreign "ImGuiStyleMod_ImGuiStyleMod_Float"
        ((lift_typ style_var_t) @-> float
          @-> returning (ptr (lift_typ StyleMod.t)))
    let vec2 =
      foreign "ImGuiStyleMod_ImGuiStyleMod_Vec2"
        ((lift_typ style_var_t) @-> (lift_typ Vec2.t)
          @-> returning (ptr (lift_typ StyleMod.t)))
  end
  
  module ImGuiComboPreviewData = struct
    let im_combo_preview_data =
      foreign "ImGuiComboPreviewData_ImGuiComboPreviewData"
        (void @-> returning (ptr (lift_typ ComboPreviewData.t)))
    let destroy =
      foreign "ImGuiComboPreviewData_destroy"
        ((ptr (lift_typ ComboPreviewData.t)) @-> returning void)
  end
  
  module ImGuiMenuColumns = struct
    let im_menu_columns =
      foreign "ImGuiMenuColumns_ImGuiMenuColumns"
        (void @-> returning (ptr (lift_typ MenuColumns.t)))
    let destroy =
      foreign "ImGuiMenuColumns_destroy"
        ((ptr (lift_typ MenuColumns.t)) @-> returning void)
    let update =
      foreign "ImGuiMenuColumns_Update"
        ((ptr (lift_typ MenuColumns.t)) @-> float @-> bool @-> returning void)
    let decl_columns =
      foreign "ImGuiMenuColumns_DeclColumns"
        ((ptr (lift_typ MenuColumns.t)) @-> float @-> float @-> float @-> float
          @-> returning float)
    let calc_next_total_width =
      foreign "ImGuiMenuColumns_CalcNextTotalWidth"
        ((ptr (lift_typ MenuColumns.t)) @-> bool @-> returning void)
  end
  
  module ImGuiInputTextDeactivatedState = struct
    let im_input_text_deactivated_state =
      foreign "ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState"
        (void @-> returning (ptr (lift_typ InputTextDeactivatedState.t)))
    let destroy =
      foreign "ImGuiInputTextDeactivatedState_destroy"
        ((ptr (lift_typ InputTextDeactivatedState.t)) @-> returning void)
    let clear_free_memory =
      foreign "ImGuiInputTextDeactivatedState_ClearFreeMemory"
        ((ptr (lift_typ InputTextDeactivatedState.t)) @-> returning void)
  end
  
  module ImGuiInputTextState = struct
    let im_input_text_state =
      foreign "ImGuiInputTextState_ImGuiInputTextState"
        (void @-> returning (ptr (lift_typ InputTextState.t)))
    let destroy =
      foreign "ImGuiInputTextState_destroy"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
    let clear_text =
      foreign "ImGuiInputTextState_ClearText"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
    let clear_free_memory =
      foreign "ImGuiInputTextState_ClearFreeMemory"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
    let get_undo_avail_count =
      foreign "ImGuiInputTextState_GetUndoAvailCount"
        ((ptr (lift_typ InputTextState.t)) @-> returning int)
    let get_redo_avail_count =
      foreign "ImGuiInputTextState_GetRedoAvailCount"
        ((ptr (lift_typ InputTextState.t)) @-> returning int)
    let on_key_pressed =
      foreign "ImGuiInputTextState_OnKeyPressed"
        ((ptr (lift_typ InputTextState.t)) @-> int @-> returning void)
    let cursor_anim_reset =
      foreign "ImGuiInputTextState_CursorAnimReset"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
    let cursor_clamp =
      foreign "ImGuiInputTextState_CursorClamp"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
    let has_selection =
      foreign "ImGuiInputTextState_HasSelection"
        ((ptr (lift_typ InputTextState.t)) @-> returning bool)
    let clear_selection =
      foreign "ImGuiInputTextState_ClearSelection"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
    let get_cursor_pos =
      foreign "ImGuiInputTextState_GetCursorPos"
        ((ptr (lift_typ InputTextState.t)) @-> returning int)
    let get_selection_start =
      foreign "ImGuiInputTextState_GetSelectionStart"
        ((ptr (lift_typ InputTextState.t)) @-> returning int)
    let get_selection_end =
      foreign "ImGuiInputTextState_GetSelectionEnd"
        ((ptr (lift_typ InputTextState.t)) @-> returning int)
    let select_all =
      foreign "ImGuiInputTextState_SelectAll"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
    let reload_user_buf_and_select_all =
      foreign "ImGuiInputTextState_ReloadUserBufAndSelectAll"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
    let reload_user_buf_and_keep_selection =
      foreign "ImGuiInputTextState_ReloadUserBufAndKeepSelection"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
    let reload_user_buf_and_move_to_end =
      foreign "ImGuiInputTextState_ReloadUserBufAndMoveToEnd"
        ((ptr (lift_typ InputTextState.t)) @-> returning void)
  end
  
  module ImGuiNextWindowData = struct
    let im_next_window_data =
      foreign "ImGuiNextWindowData_ImGuiNextWindowData"
        (void @-> returning (ptr (lift_typ NextWindowData.t)))
    let destroy =
      foreign "ImGuiNextWindowData_destroy"
        ((ptr (lift_typ NextWindowData.t)) @-> returning void)
    let clear_flags =
      foreign "ImGuiNextWindowData_ClearFlags"
        ((ptr (lift_typ NextWindowData.t)) @-> returning void)
  end
  
  module ImGuiNextItemData = struct
    let im_next_item_data =
      foreign "ImGuiNextItemData_ImGuiNextItemData"
        (void @-> returning (ptr (lift_typ NextItemData.t)))
    let destroy =
      foreign "ImGuiNextItemData_destroy"
        ((ptr (lift_typ NextItemData.t)) @-> returning void)
    let clear_flags =
      foreign "ImGuiNextItemData_ClearFlags"
        ((ptr (lift_typ NextItemData.t)) @-> returning void)
  end
  
  module ImGuiLastItemData = struct
    let im_last_item_data =
      foreign "ImGuiLastItemData_ImGuiLastItemData"
        (void @-> returning (ptr (lift_typ LastItemData.t)))
    let destroy =
      foreign "ImGuiLastItemData_destroy"
        ((ptr (lift_typ LastItemData.t)) @-> returning void)
  end
  
  module ImGuiStackSizes = struct
    let im_stack_sizes =
      foreign "ImGuiStackSizes_ImGuiStackSizes"
        (void @-> returning (ptr (lift_typ StackSizes.t)))
    let destroy =
      foreign "ImGuiStackSizes_destroy"
        ((ptr (lift_typ StackSizes.t)) @-> returning void)
    let set_to_context_state =
      foreign "ImGuiStackSizes_SetToContextState"
        ((ptr (lift_typ StackSizes.t)) @-> (ptr (lift_typ Context.t))
          @-> returning void)
    let compare_with_context_state =
      foreign "ImGuiStackSizes_CompareWithContextState"
        ((ptr (lift_typ StackSizes.t)) @-> (ptr (lift_typ Context.t))
          @-> returning void)
  end
  
  module ImGuiPtrOrIndex = struct
    let ptr_ =
      foreign "ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr"
        ((ptr void) @-> returning (ptr (lift_typ PtrOrIndex.t)))
    let destroy =
      foreign "ImGuiPtrOrIndex_destroy"
        ((ptr (lift_typ PtrOrIndex.t)) @-> returning void)
    let int_ =
      foreign "ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int"
        (int @-> returning (ptr (lift_typ PtrOrIndex.t)))
  end
  
  module ImGuiDataVarInfo = struct
    let get_var_ptr =
      foreign "ImGuiDataVarInfo_GetVarPtr"
        ((ptr (lift_typ DataVarInfo.t)) @-> (ptr void)
          @-> returning (ptr void))
  end
  
  module ImGuiPopupData = struct
    let im_popup_data =
      foreign "ImGuiPopupData_ImGuiPopupData"
        (void @-> returning (ptr (lift_typ PopupData.t)))
    let destroy =
      foreign "ImGuiPopupData_destroy"
        ((ptr (lift_typ PopupData.t)) @-> returning void)
  end
  
  module ImGuiInputEvent = struct
    let im_input_event =
      foreign "ImGuiInputEvent_ImGuiInputEvent"
        (void @-> returning (ptr (lift_typ InputEvent.t)))
    let destroy =
      foreign "ImGuiInputEvent_destroy"
        ((ptr (lift_typ InputEvent.t)) @-> returning void)
  end
  
  module ImGuiKeyRoutingData = struct
    let im_key_routing_data =
      foreign "ImGuiKeyRoutingData_ImGuiKeyRoutingData"
        (void @-> returning (ptr (lift_typ KeyRoutingData.t)))
    let destroy =
      foreign "ImGuiKeyRoutingData_destroy"
        ((ptr (lift_typ KeyRoutingData.t)) @-> returning void)
  end
  
  module ImGuiKeyRoutingTable = struct
    let im_key_routing_table =
      foreign "ImGuiKeyRoutingTable_ImGuiKeyRoutingTable"
        (void @-> returning (ptr (lift_typ KeyRoutingTable.t)))
    let destroy =
      foreign "ImGuiKeyRoutingTable_destroy"
        ((ptr (lift_typ KeyRoutingTable.t)) @-> returning void)
    let clear =
      foreign "ImGuiKeyRoutingTable_Clear"
        ((ptr (lift_typ KeyRoutingTable.t)) @-> returning void)
  end
  
  module ImGuiKeyOwnerData = struct
    let im_key_owner_data =
      foreign "ImGuiKeyOwnerData_ImGuiKeyOwnerData"
        (void @-> returning (ptr (lift_typ KeyOwnerData.t)))
    let destroy =
      foreign "ImGuiKeyOwnerData_destroy"
        ((ptr (lift_typ KeyOwnerData.t)) @-> returning void)
  end
  
  module ImGuiListClipperRange = struct
    let from_indices =
      foreign "ImGuiListClipperRange_FromIndices"
        (int @-> int @-> returning (lift_typ ListClipperRange.t))
    let from_positions =
      foreign "ImGuiListClipperRange_FromPositions"
        (float @-> float @-> int @-> int
          @-> returning (lift_typ ListClipperRange.t))
  end
  
  module ImGuiListClipperData = struct
    let im_list_clipper_data =
      foreign "ImGuiListClipperData_ImGuiListClipperData"
        (void @-> returning (ptr (lift_typ ListClipperData.t)))
    let destroy =
      foreign "ImGuiListClipperData_destroy"
        ((ptr (lift_typ ListClipperData.t)) @-> returning void)
    let reset =
      foreign "ImGuiListClipperData_Reset"
        ((ptr (lift_typ ListClipperData.t)) @-> (ptr (lift_typ ListClipper.t))
          @-> returning void)
  end
  
  module ImGuiNavItemData = struct
    let im_nav_item_data =
      foreign "ImGuiNavItemData_ImGuiNavItemData"
        (void @-> returning (ptr (lift_typ NavItemData.t)))
    let destroy =
      foreign "ImGuiNavItemData_destroy"
        ((ptr (lift_typ NavItemData.t)) @-> returning void)
    let clear =
      foreign "ImGuiNavItemData_Clear"
        ((ptr (lift_typ NavItemData.t)) @-> returning void)
  end
  
  module ImGuiTypingSelectState = struct
    let im_typing_select_state =
      foreign "ImGuiTypingSelectState_ImGuiTypingSelectState"
        (void @-> returning (ptr (lift_typ TypingSelectState.t)))
    let destroy =
      foreign "ImGuiTypingSelectState_destroy"
        ((ptr (lift_typ TypingSelectState.t)) @-> returning void)
    let clear =
      foreign "ImGuiTypingSelectState_Clear"
        ((ptr (lift_typ TypingSelectState.t)) @-> returning void)
  end
  
  module ImGuiOldColumnData = struct
    let im_old_column_data =
      foreign "ImGuiOldColumnData_ImGuiOldColumnData"
        (void @-> returning (ptr (lift_typ OldColumnData.t)))
    let destroy =
      foreign "ImGuiOldColumnData_destroy"
        ((ptr (lift_typ OldColumnData.t)) @-> returning void)
  end
  
  module ImGuiOldColumns = struct
    let im_old_columns =
      foreign "ImGuiOldColumns_ImGuiOldColumns"
        (void @-> returning (ptr (lift_typ OldColumns.t)))
    let destroy =
      foreign "ImGuiOldColumns_destroy"
        ((ptr (lift_typ OldColumns.t)) @-> returning void)
  end
  
  module ImGuiDockNode = struct
    let im_dock_node =
      foreign "ImGuiDockNode_ImGuiDockNode"
        ((lift_typ id_t) @-> returning (ptr (lift_typ DockNode.t)))
    let destroy =
      foreign "ImGuiDockNode_destroy"
        ((ptr (lift_typ DockNode.t)) @-> returning void)
    let is_root_node =
      foreign "ImGuiDockNode_IsRootNode"
        ((ptr (lift_typ DockNode.t)) @-> returning bool)
    let is_dock_space =
      foreign "ImGuiDockNode_IsDockSpace"
        ((ptr (lift_typ DockNode.t)) @-> returning bool)
    let is_floating_node =
      foreign "ImGuiDockNode_IsFloatingNode"
        ((ptr (lift_typ DockNode.t)) @-> returning bool)
    let is_central_node =
      foreign "ImGuiDockNode_IsCentralNode"
        ((ptr (lift_typ DockNode.t)) @-> returning bool)
    let is_hidden_tab_bar =
      foreign "ImGuiDockNode_IsHiddenTabBar"
        ((ptr (lift_typ DockNode.t)) @-> returning bool)
    let is_no_tab_bar =
      foreign "ImGuiDockNode_IsNoTabBar"
        ((ptr (lift_typ DockNode.t)) @-> returning bool)
    let is_split_node =
      foreign "ImGuiDockNode_IsSplitNode"
        ((ptr (lift_typ DockNode.t)) @-> returning bool)
    let is_leaf_node =
      foreign "ImGuiDockNode_IsLeafNode"
        ((ptr (lift_typ DockNode.t)) @-> returning bool)
    let is_empty =
      foreign "ImGuiDockNode_IsEmpty"
        ((ptr (lift_typ DockNode.t)) @-> returning bool)
    let rect =
      foreign "ImGuiDockNode_Rect"
        ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ DockNode.t))
          @-> returning void)
    let set_local_flags =
      foreign "ImGuiDockNode_SetLocalFlags"
        ((ptr (lift_typ DockNode.t)) @-> (lift_typ dock_node_flags_t)
          @-> returning void)
    let update_merged_flags =
      foreign "ImGuiDockNode_UpdateMergedFlags"
        ((ptr (lift_typ DockNode.t)) @-> returning void)
  end
  
  module ImGuiDockContext = struct
    let im_dock_context =
      foreign "ImGuiDockContext_ImGuiDockContext"
        (void @-> returning (ptr (lift_typ DockContext.t)))
    let destroy =
      foreign "ImGuiDockContext_destroy"
        ((ptr (lift_typ DockContext.t)) @-> returning void)
  end
  
  module ImGuiViewportP = struct
    let im_viewport_p =
      foreign "ImGuiViewportP_ImGuiViewportP"
        (void @-> returning (ptr (lift_typ ViewportP.t)))
    let destroy =
      foreign "ImGuiViewportP_destroy"
        ((ptr (lift_typ ViewportP.t)) @-> returning void)
    let clear_request_flags =
      foreign "ImGuiViewportP_ClearRequestFlags"
        ((ptr (lift_typ ViewportP.t)) @-> returning void)
    let calc_work_rect_pos =
      foreign "ImGuiViewportP_CalcWorkRectPos"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ ViewportP.t)) @->
          (lift_typ Vec2.t) @-> returning void)
    let calc_work_rect_size =
      foreign "ImGuiViewportP_CalcWorkRectSize"
        ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ ViewportP.t)) @->
          (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> returning void)
    let update_work_rect =
      foreign "ImGuiViewportP_UpdateWorkRect"
        ((ptr (lift_typ ViewportP.t)) @-> returning void)
    let get_main_rect =
      foreign "ImGuiViewportP_GetMainRect"
        ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ ViewportP.t))
          @-> returning void)
    let get_work_rect =
      foreign "ImGuiViewportP_GetWorkRect"
        ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ ViewportP.t))
          @-> returning void)
    let get_build_work_rect =
      foreign "ImGuiViewportP_GetBuildWorkRect"
        ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ ViewportP.t))
          @-> returning void)
  end
  
  module ImGuiWindowSettings = struct
    let im_window_settings =
      foreign "ImGuiWindowSettings_ImGuiWindowSettings"
        (void @-> returning (ptr (lift_typ WindowSettings.t)))
    let destroy =
      foreign "ImGuiWindowSettings_destroy"
        ((ptr (lift_typ WindowSettings.t)) @-> returning void)
    let get_name =
      foreign "ImGuiWindowSettings_GetName"
        ((ptr (lift_typ WindowSettings.t)) @-> returning string)
  end
  
  module ImGuiSettingsHandler = struct
    let im_settings_handler =
      foreign "ImGuiSettingsHandler_ImGuiSettingsHandler"
        (void @-> returning (ptr (lift_typ SettingsHandler.t)))
    let destroy =
      foreign "ImGuiSettingsHandler_destroy"
        ((ptr (lift_typ SettingsHandler.t)) @-> returning void)
  end
  
  module ImGuiDebugAllocInfo = struct
    let im_debug_alloc_info =
      foreign "ImGuiDebugAllocInfo_ImGuiDebugAllocInfo"
        (void @-> returning (ptr (lift_typ DebugAllocInfo.t)))
    let destroy =
      foreign "ImGuiDebugAllocInfo_destroy"
        ((ptr (lift_typ DebugAllocInfo.t)) @-> returning void)
  end
  
  module ImGuiStackLevelInfo = struct
    let im_stack_level_info =
      foreign "ImGuiStackLevelInfo_ImGuiStackLevelInfo"
        (void @-> returning (ptr (lift_typ StackLevelInfo.t)))
    let destroy =
      foreign "ImGuiStackLevelInfo_destroy"
        ((ptr (lift_typ StackLevelInfo.t)) @-> returning void)
  end
  
  module ImGuiIDStackTool = struct
    let im_id_stack_tool =
      foreign "ImGuiIDStackTool_ImGuiIDStackTool"
        (void @-> returning (ptr (lift_typ IdStackTool.t)))
    let destroy =
      foreign "ImGuiIDStackTool_destroy"
        ((ptr (lift_typ IdStackTool.t)) @-> returning void)
  end
  
  module ImGuiContextHook = struct
    let im_context_hook =
      foreign "ImGuiContextHook_ImGuiContextHook"
        (void @-> returning (ptr (lift_typ ContextHook.t)))
    let destroy =
      foreign "ImGuiContextHook_destroy"
        ((ptr (lift_typ ContextHook.t)) @-> returning void)
  end
  
  module ImGuiContext = struct
    let im_context =
      foreign "ImGuiContext_ImGuiContext"
        ((ptr (lift_typ FontAtlas.t)) @-> returning (ptr (lift_typ Context.t)))
    let destroy =
      foreign "ImGuiContext_destroy"
        ((ptr (lift_typ Context.t)) @-> returning void)
  end
  
  module ImGuiWindow = struct
    let im_window =
      foreign "ImGuiWindow_ImGuiWindow"
        ((ptr (lift_typ Context.t)) @-> string
          @-> returning (ptr (lift_typ Window.t)))
    let destroy =
      foreign "ImGuiWindow_destroy"
        ((ptr (lift_typ Window.t)) @-> returning void)
    let get_id_str =
      foreign "ImGuiWindow_GetID_Str"
        ((ptr (lift_typ Window.t)) @-> string @-> string
          @-> returning (lift_typ id_t))
    let get_id_ptr =
      foreign "ImGuiWindow_GetID_Ptr"
        ((ptr (lift_typ Window.t)) @-> (ptr void)
          @-> returning (lift_typ id_t))
    let get_id_int =
      foreign "ImGuiWindow_GetID_Int"
        ((ptr (lift_typ Window.t)) @-> int @-> returning (lift_typ id_t))
    let get_id_from_rectangle =
      foreign "ImGuiWindow_GetIDFromRectangle"
        ((ptr (lift_typ Window.t)) @-> (lift_typ Rect.t)
          @-> returning (lift_typ id_t))
    let rect =
      foreign "ImGuiWindow_Rect"
        ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ Window.t))
          @-> returning void)
    let calc_font_size =
      foreign "ImGuiWindow_CalcFontSize"
        ((ptr (lift_typ Window.t)) @-> returning float)
    let title_bar_height =
      foreign "ImGuiWindow_TitleBarHeight"
        ((ptr (lift_typ Window.t)) @-> returning float)
    let title_bar_rect =
      foreign "ImGuiWindow_TitleBarRect"
        ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ Window.t))
          @-> returning void)
    let menu_bar_height =
      foreign "ImGuiWindow_MenuBarHeight"
        ((ptr (lift_typ Window.t)) @-> returning float)
    let menu_bar_rect =
      foreign "ImGuiWindow_MenuBarRect"
        ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ Window.t))
          @-> returning void)
  end
  
  module ImGuiTabItem = struct
    let im_tab_item =
      foreign "ImGuiTabItem_ImGuiTabItem"
        (void @-> returning (ptr (lift_typ TabItem.t)))
    let destroy =
      foreign "ImGuiTabItem_destroy"
        ((ptr (lift_typ TabItem.t)) @-> returning void)
  end
  
  module ImGuiTabBar = struct
    let im_tab_bar =
      foreign "ImGuiTabBar_ImGuiTabBar"
        (void @-> returning (ptr (lift_typ TabBar.t)))
    let destroy =
      foreign "ImGuiTabBar_destroy"
        ((ptr (lift_typ TabBar.t)) @-> returning void)
  end
  
  module ImGuiTableColumn = struct
    let im_table_column =
      foreign "ImGuiTableColumn_ImGuiTableColumn"
        (void @-> returning (ptr (lift_typ TableColumn.t)))
    let destroy =
      foreign "ImGuiTableColumn_destroy"
        ((ptr (lift_typ TableColumn.t)) @-> returning void)
  end
  
  module ImGuiTableInstanceData = struct
    let im_table_instance_data =
      foreign "ImGuiTableInstanceData_ImGuiTableInstanceData"
        (void @-> returning (ptr (lift_typ TableInstanceData.t)))
    let destroy =
      foreign "ImGuiTableInstanceData_destroy"
        ((ptr (lift_typ TableInstanceData.t)) @-> returning void)
  end
  
  module ImGuiTable = struct
    let im_table =
      foreign "ImGuiTable_ImGuiTable"
        (void @-> returning (ptr (lift_typ Table.t)))
    let destroy =
      foreign "ImGuiTable_destroy"
        ((ptr (lift_typ Table.t)) @-> returning void)
  end
  
  module ImGuiTableTempData = struct
    let im_table_temp_data =
      foreign "ImGuiTableTempData_ImGuiTableTempData"
        (void @-> returning (ptr (lift_typ TableTempData.t)))
    let destroy =
      foreign "ImGuiTableTempData_destroy"
        ((ptr (lift_typ TableTempData.t)) @-> returning void)
  end
  
  module ImGuiTableColumnSettings = struct
    let im_table_column_settings =
      foreign "ImGuiTableColumnSettings_ImGuiTableColumnSettings"
        (void @-> returning (ptr (lift_typ TableColumnSettings.t)))
    let destroy =
      foreign "ImGuiTableColumnSettings_destroy"
        ((ptr (lift_typ TableColumnSettings.t)) @-> returning void)
  end
  
  module ImGuiTableSettings = struct
    let im_table_settings =
      foreign "ImGuiTableSettings_ImGuiTableSettings"
        (void @-> returning (ptr (lift_typ TableSettings.t)))
    let destroy =
      foreign "ImGuiTableSettings_destroy"
        ((ptr (lift_typ TableSettings.t)) @-> returning void)
    let get_column_settings =
      foreign "ImGuiTableSettings_GetColumnSettings"
        ((ptr (lift_typ TableSettings.t))
          @-> returning (ptr (lift_typ TableColumnSettings.t)))
  end
  
  let get_current_window_read =
    foreign "igGetCurrentWindowRead"
      (void @-> returning (ptr (lift_typ Window.t)))
  let get_current_window =
    foreign "igGetCurrentWindow" (void @-> returning (ptr (lift_typ Window.t)))
  let find_window_by_id =
    foreign "igFindWindowByID"
      ((lift_typ id_t) @-> returning (ptr (lift_typ Window.t)))
  let find_window_by_name =
    foreign "igFindWindowByName"
      (string @-> returning (ptr (lift_typ Window.t)))
  let update_window_parent_and_root_links =
    foreign "igUpdateWindowParentAndRootLinks"
      ((ptr (lift_typ Window.t)) @-> (lift_typ window_flags_t) @->
        (ptr (lift_typ Window.t)) @-> returning void)
  let update_window_skip_refresh =
    foreign "igUpdateWindowSkipRefresh"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let calc_window_next_auto_fit_size =
    foreign "igCalcWindowNextAutoFitSize"
      ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Window.t))
        @-> returning void)
  let is_window_child_of =
    foreign "igIsWindowChildOf"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ Window.t)) @-> bool @->
        bool @-> returning bool)
  let is_window_within_begin_stack_of =
    foreign "igIsWindowWithinBeginStackOf"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ Window.t))
        @-> returning bool)
  let is_window_above =
    foreign "igIsWindowAbove"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ Window.t))
        @-> returning bool)
  let is_window_nav_focusable =
    foreign "igIsWindowNavFocusable"
      ((ptr (lift_typ Window.t)) @-> returning bool)
  let set_window_pos_window_ptr =
    foreign "igSetWindowPos_WindowPtr"
      ((ptr (lift_typ Window.t)) @-> (lift_typ Vec2.t) @-> (lift_typ cond_t)
        @-> returning void)
  let set_window_size_window_ptr =
    foreign "igSetWindowSize_WindowPtr"
      ((ptr (lift_typ Window.t)) @-> (lift_typ Vec2.t) @-> (lift_typ cond_t)
        @-> returning void)
  let set_window_collapsed_window_ptr =
    foreign "igSetWindowCollapsed_WindowPtr"
      ((ptr (lift_typ Window.t)) @-> bool @-> (lift_typ cond_t)
        @-> returning void)
  let set_window_hit_test_hole =
    foreign "igSetWindowHitTestHole"
      ((ptr (lift_typ Window.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> returning void)
  let set_window_hidden_and_skip_items_for_current_frame =
    foreign "igSetWindowHiddenAndSkipItemsForCurrentFrame"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let set_window_parent_window_for_focus_route =
    foreign "igSetWindowParentWindowForFocusRoute"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ Window.t))
        @-> returning void)
  let window_rect_abs_to_rel =
    foreign "igWindowRectAbsToRel"
      ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ Window.t)) @->
        (lift_typ Rect.t) @-> returning void)
  let window_rect_rel_to_abs =
    foreign "igWindowRectRelToAbs"
      ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ Window.t)) @->
        (lift_typ Rect.t) @-> returning void)
  let window_pos_rel_to_abs =
    foreign "igWindowPosRelToAbs"
      ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Window.t)) @->
        (lift_typ Vec2.t) @-> returning void)
  let focus_window =
    foreign "igFocusWindow"
      ((ptr (lift_typ Window.t)) @-> (lift_typ focus_request_flags_t)
        @-> returning void)
  let focus_top_most_window_under_one =
    foreign "igFocusTopMostWindowUnderOne"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ Window.t)) @->
        (ptr (lift_typ Viewport.t)) @-> (lift_typ focus_request_flags_t)
        @-> returning void)
  let bring_window_to_focus_front =
    foreign "igBringWindowToFocusFront"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let bring_window_to_display_front =
    foreign "igBringWindowToDisplayFront"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let bring_window_to_display_back =
    foreign "igBringWindowToDisplayBack"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let bring_window_to_display_behind =
    foreign "igBringWindowToDisplayBehind"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ Window.t))
        @-> returning void)
  let find_window_display_index =
    foreign "igFindWindowDisplayIndex"
      ((ptr (lift_typ Window.t)) @-> returning int)
  let find_bottom_most_visible_window_within_begin_stack =
    foreign "igFindBottomMostVisibleWindowWithinBeginStack"
      ((ptr (lift_typ Window.t)) @-> returning (ptr (lift_typ Window.t)))
  let set_next_window_refresh_policy =
    foreign "igSetNextWindowRefreshPolicy"
      ((lift_typ window_refresh_flags_t) @-> returning void)
  let set_current_font =
    foreign "igSetCurrentFont" ((ptr (lift_typ Font.t)) @-> returning void)
  let get_default_font =
    foreign "igGetDefaultFont" (void @-> returning (ptr (lift_typ Font.t)))
  let get_foreground_draw_list_window_ptr =
    foreign "igGetForegroundDrawList_WindowPtr"
      ((ptr (lift_typ Window.t)) @-> returning (ptr (lift_typ DrawList.t)))
  let add_draw_list_to_draw_data_ex =
    foreign "igAddDrawListToDrawDataEx"
      ((ptr (lift_typ DrawData.t)) @-> (ptr (lift_typ Vector_ImDrawListPtr.t))
        @-> (ptr (lift_typ DrawList.t)) @-> returning void)
  let initialize = foreign "igInitialize" (void @-> returning void)
  let shutdown = foreign "igShutdown" (void @-> returning void)
  let update_input_events =
    foreign "igUpdateInputEvents" (bool @-> returning void)
  let update_hovered_window_and_capture_flags =
    foreign "igUpdateHoveredWindowAndCaptureFlags" (void @-> returning void)
  let start_mouse_moving_window =
    foreign "igStartMouseMovingWindow"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let start_mouse_moving_window_or_node =
    foreign "igStartMouseMovingWindowOrNode"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ DockNode.t)) @-> bool
        @-> returning void)
  let update_mouse_moving_window_new_frame =
    foreign "igUpdateMouseMovingWindowNewFrame" (void @-> returning void)
  let update_mouse_moving_window_end_frame =
    foreign "igUpdateMouseMovingWindowEndFrame" (void @-> returning void)
  let add_context_hook =
    foreign "igAddContextHook"
      ((ptr (lift_typ Context.t)) @-> (ptr (lift_typ ContextHook.t))
        @-> returning (lift_typ id_t))
  let remove_context_hook =
    foreign "igRemoveContextHook"
      ((ptr (lift_typ Context.t)) @-> (lift_typ id_t) @-> returning void)
  let call_context_hooks =
    foreign "igCallContextHooks"
      ((ptr (lift_typ Context.t)) @-> (lift_typ ContextHookType.t)
        @-> returning void)
  let translate_windows_in_viewport =
    foreign "igTranslateWindowsInViewport"
      ((ptr (lift_typ ViewportP.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> returning void)
  let scale_windows_in_viewport =
    foreign "igScaleWindowsInViewport"
      ((ptr (lift_typ ViewportP.t)) @-> float @-> returning void)
  let destroy_platform_window =
    foreign "igDestroyPlatformWindow"
      ((ptr (lift_typ ViewportP.t)) @-> returning void)
  let set_window_viewport =
    foreign "igSetWindowViewport"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ ViewportP.t))
        @-> returning void)
  let set_current_viewport =
    foreign "igSetCurrentViewport"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ ViewportP.t))
        @-> returning void)
  let get_viewport_platform_monitor =
    foreign "igGetViewportPlatformMonitor"
      ((ptr (lift_typ Viewport.t))
        @-> returning (ptr (lift_typ PlatformMonitor.t)))
  let find_hovered_viewport_from_platform_window_stack =
    foreign "igFindHoveredViewportFromPlatformWindowStack"
      ((lift_typ Vec2.t) @-> returning (ptr (lift_typ ViewportP.t)))
  let mark_ini_settings_dirty_nil =
    foreign "igMarkIniSettingsDirty_Nil" (void @-> returning void)
  let mark_ini_settings_dirty_window_ptr =
    foreign "igMarkIniSettingsDirty_WindowPtr"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let clear_ini_settings =
    foreign "igClearIniSettings" (void @-> returning void)
  let add_settings_handler =
    foreign "igAddSettingsHandler"
      ((ptr (lift_typ SettingsHandler.t)) @-> returning void)
  let remove_settings_handler =
    foreign "igRemoveSettingsHandler" (string @-> returning void)
  let find_settings_handler =
    foreign "igFindSettingsHandler"
      (string @-> returning (ptr (lift_typ SettingsHandler.t)))
  let create_new_window_settings =
    foreign "igCreateNewWindowSettings"
      (string @-> returning (ptr (lift_typ WindowSettings.t)))
  let find_window_settings_by_id =
    foreign "igFindWindowSettingsByID"
      ((lift_typ id_t) @-> returning (ptr (lift_typ WindowSettings.t)))
  let find_window_settings_by_window =
    foreign "igFindWindowSettingsByWindow"
      ((ptr (lift_typ Window.t))
        @-> returning (ptr (lift_typ WindowSettings.t)))
  let clear_window_settings =
    foreign "igClearWindowSettings" (string @-> returning void)
  let localize_register_entries =
    foreign "igLocalizeRegisterEntries"
      ((ptr (lift_typ LocEntry.t)) @-> int @-> returning void)
  let localize_get_msg =
    foreign "igLocalizeGetMsg" ((lift_typ LocKey.t) @-> returning string)
  let set_scroll_x_window_ptr =
    foreign "igSetScrollX_WindowPtr"
      ((ptr (lift_typ Window.t)) @-> float @-> returning void)
  let set_scroll_y_window_ptr =
    foreign "igSetScrollY_WindowPtr"
      ((ptr (lift_typ Window.t)) @-> float @-> returning void)
  let set_scroll_from_pos_x_window_ptr =
    foreign "igSetScrollFromPosX_WindowPtr"
      ((ptr (lift_typ Window.t)) @-> float @-> float @-> returning void)
  let set_scroll_from_pos_y_window_ptr =
    foreign "igSetScrollFromPosY_WindowPtr"
      ((ptr (lift_typ Window.t)) @-> float @-> float @-> returning void)
  let scroll_to_item =
    foreign "igScrollToItem" ((lift_typ scroll_flags_t) @-> returning void)
  let scroll_to_rect =
    foreign "igScrollToRect"
      ((ptr (lift_typ Window.t)) @-> (lift_typ Rect.t) @->
        (lift_typ scroll_flags_t) @-> returning void)
  let scroll_to_rect_ex =
    foreign "igScrollToRectEx"
      ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Window.t)) @->
        (lift_typ Rect.t) @-> (lift_typ scroll_flags_t) @-> returning void)
  let scroll_to_bring_rect_into_view =
    foreign "igScrollToBringRectIntoView"
      ((ptr (lift_typ Window.t)) @-> (lift_typ Rect.t) @-> returning void)
  let get_item_status_flags =
    foreign "igGetItemStatusFlags"
      (void @-> returning (lift_typ item_status_flags_t))
  let get_item_flags =
    foreign "igGetItemFlags" (void @-> returning (lift_typ item_flags_t))
  let get_active_id =
    foreign "igGetActiveID" (void @-> returning (lift_typ id_t))
  let get_focus_id =
    foreign "igGetFocusID" (void @-> returning (lift_typ id_t))
  let set_active_id =
    foreign "igSetActiveID"
      ((lift_typ id_t) @-> (ptr (lift_typ Window.t)) @-> returning void)
  let set_focus_id =
    foreign "igSetFocusID"
      ((lift_typ id_t) @-> (ptr (lift_typ Window.t)) @-> returning void)
  let clear_active_id = foreign "igClearActiveID" (void @-> returning void)
  let get_hovered_id =
    foreign "igGetHoveredID" (void @-> returning (lift_typ id_t))
  let set_hovered_id =
    foreign "igSetHoveredID" ((lift_typ id_t) @-> returning void)
  let keep_alive_id =
    foreign "igKeepAliveID" ((lift_typ id_t) @-> returning void)
  let mark_item_edited =
    foreign "igMarkItemEdited" ((lift_typ id_t) @-> returning void)
  let push_override_id =
    foreign "igPushOverrideID" ((lift_typ id_t) @-> returning void)
  let get_id_with_seed_str =
    foreign "igGetIDWithSeed_Str"
      (string @-> string @-> (lift_typ id_t) @-> returning (lift_typ id_t))
  let get_id_with_seed_int =
    foreign "igGetIDWithSeed_Int"
      (int @-> (lift_typ id_t) @-> returning (lift_typ id_t))
  let item_size_vec2 =
    foreign "igItemSize_Vec2" ((lift_typ Vec2.t) @-> float @-> returning void)
  let item_size_rect =
    foreign "igItemSize_Rect" ((lift_typ Rect.t) @-> float @-> returning void)
  let item_add =
    foreign "igItemAdd"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> (ptr (lift_typ Rect.t)) @->
        (lift_typ item_flags_t) @-> returning bool)
  let item_hoverable =
    foreign "igItemHoverable"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> (lift_typ item_flags_t)
        @-> returning bool)
  let is_window_content_hoverable =
    foreign "igIsWindowContentHoverable"
      ((ptr (lift_typ Window.t)) @-> (lift_typ hovered_flags_t)
        @-> returning bool)
  let is_clipped_ex =
    foreign "igIsClippedEx"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> returning bool)
  let set_last_item_data =
    foreign "igSetLastItemData"
      ((lift_typ id_t) @-> (lift_typ item_flags_t) @->
        (lift_typ item_status_flags_t) @-> (lift_typ Rect.t)
        @-> returning void)
  let calc_item_size =
    foreign "igCalcItemSize"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> float @-> float
        @-> returning void)
  let calc_wrap_width_for_pos =
    foreign "igCalcWrapWidthForPos"
      ((lift_typ Vec2.t) @-> float @-> returning float)
  let push_multi_items_widths =
    foreign "igPushMultiItemsWidths" (int @-> float @-> returning void)
  let is_item_toggled_selection =
    foreign "igIsItemToggledSelection" (void @-> returning bool)
  let get_content_region_max_abs =
    foreign "igGetContentRegionMaxAbs"
      ((ptr (lift_typ Vec2.t)) @-> returning void)
  let shrink_widths =
    foreign "igShrinkWidths"
      ((ptr (lift_typ ShrinkWidthItem.t)) @-> int @-> float @-> returning void)
  let push_item_flag =
    foreign "igPushItemFlag"
      ((lift_typ item_flags_t) @-> bool @-> returning void)
  let pop_item_flag = foreign "igPopItemFlag" (void @-> returning void)
  let get_style_var_info =
    foreign "igGetStyleVarInfo"
      ((lift_typ style_var_t) @-> returning (ptr (lift_typ DataVarInfo.t)))
  let log_begin =
    foreign "igLogBegin" ((lift_typ LogType.t) @-> int @-> returning void)
  let log_to_buffer = foreign "igLogToBuffer" (int @-> returning void)
  let log_rendered_text =
    foreign "igLogRenderedText"
      ((ptr (lift_typ Vec2.t)) @-> string @-> string @-> returning void)
  let log_set_next_text_decoration =
    foreign "igLogSetNextTextDecoration" (string @-> string @-> returning void)
  let begin_child_ex =
    foreign "igBeginChildEx"
      (string @-> (lift_typ id_t) @-> (lift_typ Vec2.t) @->
        (lift_typ child_flags_t) @-> (lift_typ window_flags_t)
        @-> returning bool)
  let open_popup_ex =
    foreign "igOpenPopupEx"
      ((lift_typ id_t) @-> (lift_typ popup_flags_t) @-> returning void)
  let close_popup_to_level =
    foreign "igClosePopupToLevel" (int @-> bool @-> returning void)
  let close_popups_over_window =
    foreign "igClosePopupsOverWindow"
      ((ptr (lift_typ Window.t)) @-> bool @-> returning void)
  let close_popups_except_modals =
    foreign "igClosePopupsExceptModals" (void @-> returning void)
  let is_popup_open_id =
    foreign "igIsPopupOpen_ID"
      ((lift_typ id_t) @-> (lift_typ popup_flags_t) @-> returning bool)
  let begin_popup_ex =
    foreign "igBeginPopupEx"
      ((lift_typ id_t) @-> (lift_typ window_flags_t) @-> returning bool)
  let begin_tooltip_ex =
    foreign "igBeginTooltipEx"
      ((lift_typ tooltip_flags_t) @-> (lift_typ window_flags_t)
        @-> returning bool)
  let begin_tooltip_hidden =
    foreign "igBeginTooltipHidden" (void @-> returning bool)
  let get_popup_allowed_extent_rect =
    foreign "igGetPopupAllowedExtentRect"
      ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ Window.t))
        @-> returning void)
  let get_top_most_popup_modal =
    foreign "igGetTopMostPopupModal"
      (void @-> returning (ptr (lift_typ Window.t)))
  let get_top_most_and_visible_popup_modal =
    foreign "igGetTopMostAndVisiblePopupModal"
      (void @-> returning (ptr (lift_typ Window.t)))
  let find_blocking_modal =
    foreign "igFindBlockingModal"
      ((ptr (lift_typ Window.t)) @-> returning (ptr (lift_typ Window.t)))
  let find_best_window_pos_for_popup =
    foreign "igFindBestWindowPosForPopup"
      ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Window.t))
        @-> returning void)
  let find_best_window_pos_for_popup_ex =
    foreign "igFindBestWindowPosForPopupEx"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @->
        (ptr (lift_typ dir_t)) @-> (lift_typ Rect.t) @-> (lift_typ Rect.t) @->
        (lift_typ PopupPositionPolicy.t) @-> returning void)
  let begin_viewport_side_bar =
    foreign "igBeginViewportSideBar"
      (string @-> (ptr (lift_typ Viewport.t)) @-> (lift_typ dir_t) @-> float
        @-> (lift_typ window_flags_t) @-> returning bool)
  let begin_menu_ex =
    foreign "igBeginMenuEx" (string @-> string @-> bool @-> returning bool)
  let menu_item_ex =
    foreign "igMenuItemEx"
      (string @-> string @-> string @-> bool @-> bool @-> returning bool)
  let begin_combo_popup =
    foreign "igBeginComboPopup"
      ((lift_typ id_t) @-> (lift_typ Rect.t) @-> (lift_typ combo_flags_t)
        @-> returning bool)
  let begin_combo_preview =
    foreign "igBeginComboPreview" (void @-> returning bool)
  let end_combo_preview = foreign "igEndComboPreview" (void @-> returning void)
  let nav_init_window =
    foreign "igNavInitWindow"
      ((ptr (lift_typ Window.t)) @-> bool @-> returning void)
  let nav_init_request_apply_result =
    foreign "igNavInitRequestApplyResult" (void @-> returning void)
  let nav_move_request_but_no_result_yet =
    foreign "igNavMoveRequestButNoResultYet" (void @-> returning bool)
  let nav_move_request_submit =
    foreign "igNavMoveRequestSubmit"
      ((lift_typ dir_t) @-> (lift_typ dir_t) @-> (lift_typ nav_move_flags_t)
        @-> (lift_typ scroll_flags_t) @-> returning void)
  let nav_move_request_forward =
    foreign "igNavMoveRequestForward"
      ((lift_typ dir_t) @-> (lift_typ dir_t) @-> (lift_typ nav_move_flags_t)
        @-> (lift_typ scroll_flags_t) @-> returning void)
  let nav_move_request_resolve_with_last_item =
    foreign "igNavMoveRequestResolveWithLastItem"
      ((ptr (lift_typ NavItemData.t)) @-> returning void)
  let nav_move_request_resolve_with_past_tree_node =
    foreign "igNavMoveRequestResolveWithPastTreeNode"
      ((ptr (lift_typ NavItemData.t)) @-> (ptr (lift_typ NavTreeNodeData.t))
        @-> returning void)
  let nav_move_request_cancel =
    foreign "igNavMoveRequestCancel" (void @-> returning void)
  let nav_move_request_apply_result =
    foreign "igNavMoveRequestApplyResult" (void @-> returning void)
  let nav_move_request_try_wrapping =
    foreign "igNavMoveRequestTryWrapping"
      ((ptr (lift_typ Window.t)) @-> (lift_typ nav_move_flags_t)
        @-> returning void)
  let nav_highlight_activated =
    foreign "igNavHighlightActivated" ((lift_typ id_t) @-> returning void)
  let nav_clear_preferred_pos_for_axis =
    foreign "igNavClearPreferredPosForAxis"
      ((lift_typ Axis.t) @-> returning void)
  let nav_restore_highlight_after_move =
    foreign "igNavRestoreHighlightAfterMove" (void @-> returning void)
  let nav_update_current_window_is_scroll_pushable_x =
    foreign "igNavUpdateCurrentWindowIsScrollPushableX"
      (void @-> returning void)
  let set_nav_window =
    foreign "igSetNavWindow" ((ptr (lift_typ Window.t)) @-> returning void)
  let set_nav_id =
    foreign "igSetNavID"
      ((lift_typ id_t) @-> (lift_typ NavLayer.t) @-> (lift_typ id_t) @->
        (lift_typ Rect.t) @-> returning void)
  let set_nav_focus_scope =
    foreign "igSetNavFocusScope" ((lift_typ id_t) @-> returning void)
  let focus_item = foreign "igFocusItem" (void @-> returning void)
  let activate_item_by_id =
    foreign "igActivateItemByID" ((lift_typ id_t) @-> returning void)
  let is_named_key =
    foreign "igIsNamedKey" ((lift_typ Key.t) @-> returning bool)
  let is_named_key_or_mod_key =
    foreign "igIsNamedKeyOrModKey" ((lift_typ Key.t) @-> returning bool)
  let is_legacy_key =
    foreign "igIsLegacyKey" ((lift_typ Key.t) @-> returning bool)
  let is_keyboard_key =
    foreign "igIsKeyboardKey" ((lift_typ Key.t) @-> returning bool)
  let is_gamepad_key =
    foreign "igIsGamepadKey" ((lift_typ Key.t) @-> returning bool)
  let is_mouse_key =
    foreign "igIsMouseKey" ((lift_typ Key.t) @-> returning bool)
  let is_alias_key =
    foreign "igIsAliasKey" ((lift_typ Key.t) @-> returning bool)
  let is_mod_key = foreign "igIsModKey" ((lift_typ Key.t) @-> returning bool)
  let fixup_key_chord =
    foreign "igFixupKeyChord"
      ((ptr (lift_typ Context.t)) @-> (lift_typ key_chord_t)
        @-> returning (lift_typ key_chord_t))
  let convert_single_mod_flag_to_key =
    foreign "igConvertSingleModFlagToKey"
      ((ptr (lift_typ Context.t)) @-> (lift_typ Key.t)
        @-> returning (lift_typ Key.t))
  let get_key_data_context_ptr =
    foreign "igGetKeyData_ContextPtr"
      ((ptr (lift_typ Context.t)) @-> (lift_typ Key.t)
        @-> returning (ptr (lift_typ KeyData.t)))
  let get_key_data_key =
    foreign "igGetKeyData_Key"
      ((lift_typ Key.t) @-> returning (ptr (lift_typ KeyData.t)))
  let get_key_chord_name =
    foreign "igGetKeyChordName" ((lift_typ key_chord_t) @-> returning string)
  let mouse_button_to_key =
    foreign "igMouseButtonToKey"
      ((lift_typ mouse_button_t) @-> returning (lift_typ Key.t))
  let is_mouse_drag_past_threshold =
    foreign "igIsMouseDragPastThreshold"
      ((lift_typ mouse_button_t) @-> float @-> returning bool)
  let get_key_magnitude2d =
    foreign "igGetKeyMagnitude2d"
      ((ptr (lift_typ Vec2.t)) @-> (lift_typ Key.t) @-> (lift_typ Key.t) @->
        (lift_typ Key.t) @-> (lift_typ Key.t) @-> returning void)
  let get_nav_tweak_pressed_amount =
    foreign "igGetNavTweakPressedAmount"
      ((lift_typ Axis.t) @-> returning float)
  let calc_typematic_repeat_amount =
    foreign "igCalcTypematicRepeatAmount"
      (float @-> float @-> float @-> float @-> returning int)
  let get_typematic_repeat_rate =
    foreign "igGetTypematicRepeatRate"
      ((lift_typ input_flags_t) @-> (ptr float) @-> (ptr float)
        @-> returning void)
  let teleport_mouse_pos =
    foreign "igTeleportMousePos" ((lift_typ Vec2.t) @-> returning void)
  let set_active_id_using_all_keyboard_keys =
    foreign "igSetActiveIdUsingAllKeyboardKeys" (void @-> returning void)
  let is_active_id_using_nav_dir =
    foreign "igIsActiveIdUsingNavDir" ((lift_typ dir_t) @-> returning bool)
  let get_key_owner =
    foreign "igGetKeyOwner" ((lift_typ Key.t) @-> returning (lift_typ id_t))
  let set_key_owner =
    foreign "igSetKeyOwner"
      ((lift_typ Key.t) @-> (lift_typ id_t) @-> (lift_typ input_flags_t)
        @-> returning void)
  let set_key_owners_for_key_chord =
    foreign "igSetKeyOwnersForKeyChord"
      ((lift_typ key_chord_t) @-> (lift_typ id_t) @-> (lift_typ input_flags_t)
        @-> returning void)
  let set_item_key_owner =
    foreign "igSetItemKeyOwner"
      ((lift_typ Key.t) @-> (lift_typ input_flags_t) @-> returning void)
  let test_key_owner =
    foreign "igTestKeyOwner"
      ((lift_typ Key.t) @-> (lift_typ id_t) @-> returning bool)
  let get_key_owner_data =
    foreign "igGetKeyOwnerData"
      ((ptr (lift_typ Context.t)) @-> (lift_typ Key.t)
        @-> returning (ptr (lift_typ KeyOwnerData.t)))
  let is_key_down_id =
    foreign "igIsKeyDown_ID"
      ((lift_typ Key.t) @-> (lift_typ id_t) @-> returning bool)
  let is_key_pressed_id =
    foreign "igIsKeyPressed_ID"
      ((lift_typ Key.t) @-> (lift_typ id_t) @-> (lift_typ input_flags_t)
        @-> returning bool)
  let is_key_released_id =
    foreign "igIsKeyReleased_ID"
      ((lift_typ Key.t) @-> (lift_typ id_t) @-> returning bool)
  let is_mouse_down_id =
    foreign "igIsMouseDown_ID"
      ((lift_typ mouse_button_t) @-> (lift_typ id_t) @-> returning bool)
  let is_mouse_clicked_id =
    foreign "igIsMouseClicked_ID"
      ((lift_typ mouse_button_t) @-> (lift_typ id_t) @->
        (lift_typ input_flags_t) @-> returning bool)
  let is_mouse_released_id =
    foreign "igIsMouseReleased_ID"
      ((lift_typ mouse_button_t) @-> (lift_typ id_t) @-> returning bool)
  let is_mouse_double_clicked_id =
    foreign "igIsMouseDoubleClicked_ID"
      ((lift_typ mouse_button_t) @-> (lift_typ id_t) @-> returning bool)
  let is_key_chord_pressed_id =
    foreign "igIsKeyChordPressed_ID"
      ((lift_typ key_chord_t) @-> (lift_typ id_t) @-> (lift_typ input_flags_t)
        @-> returning bool)
  let set_next_item_shortcut =
    foreign "igSetNextItemShortcut" ((lift_typ key_chord_t) @-> returning void)
  let shortcut =
    foreign "igShortcut"
      ((lift_typ key_chord_t) @-> (lift_typ id_t) @-> (lift_typ input_flags_t)
        @-> returning bool)
  let set_shortcut_routing =
    foreign "igSetShortcutRouting"
      ((lift_typ key_chord_t) @-> (lift_typ id_t) @-> (lift_typ input_flags_t)
        @-> returning bool)
  let test_shortcut_routing =
    foreign "igTestShortcutRouting"
      ((lift_typ key_chord_t) @-> (lift_typ id_t) @-> returning bool)
  let get_shortcut_routing_data =
    foreign "igGetShortcutRoutingData"
      ((lift_typ key_chord_t) @-> returning (ptr (lift_typ KeyRoutingData.t)))
  let dock_context_initialize =
    foreign "igDockContextInitialize"
      ((ptr (lift_typ Context.t)) @-> returning void)
  let dock_context_shutdown =
    foreign "igDockContextShutdown"
      ((ptr (lift_typ Context.t)) @-> returning void)
  let dock_context_clear_nodes =
    foreign "igDockContextClearNodes"
      ((ptr (lift_typ Context.t)) @-> (lift_typ id_t) @-> bool
        @-> returning void)
  let dock_context_rebuild_nodes =
    foreign "igDockContextRebuildNodes"
      ((ptr (lift_typ Context.t)) @-> returning void)
  let dock_context_new_frame_update_undocking =
    foreign "igDockContextNewFrameUpdateUndocking"
      ((ptr (lift_typ Context.t)) @-> returning void)
  let dock_context_new_frame_update_docking =
    foreign "igDockContextNewFrameUpdateDocking"
      ((ptr (lift_typ Context.t)) @-> returning void)
  let dock_context_end_frame =
    foreign "igDockContextEndFrame"
      ((ptr (lift_typ Context.t)) @-> returning void)
  let dock_context_gen_node_id =
    foreign "igDockContextGenNodeID"
      ((ptr (lift_typ Context.t)) @-> returning (lift_typ id_t))
  let dock_context_queue_dock =
    foreign "igDockContextQueueDock"
      ((ptr (lift_typ Context.t)) @-> (ptr (lift_typ Window.t)) @->
        (ptr (lift_typ DockNode.t)) @-> (ptr (lift_typ Window.t)) @->
        (lift_typ dir_t) @-> float @-> bool @-> returning void)
  let dock_context_queue_undock_window =
    foreign "igDockContextQueueUndockWindow"
      ((ptr (lift_typ Context.t)) @-> (ptr (lift_typ Window.t))
        @-> returning void)
  let dock_context_queue_undock_node =
    foreign "igDockContextQueueUndockNode"
      ((ptr (lift_typ Context.t)) @-> (ptr (lift_typ DockNode.t))
        @-> returning void)
  let dock_context_process_undock_window =
    foreign "igDockContextProcessUndockWindow"
      ((ptr (lift_typ Context.t)) @-> (ptr (lift_typ Window.t)) @-> bool
        @-> returning void)
  let dock_context_process_undock_node =
    foreign "igDockContextProcessUndockNode"
      ((ptr (lift_typ Context.t)) @-> (ptr (lift_typ DockNode.t))
        @-> returning void)
  let dock_context_calc_drop_pos_for_docking =
    foreign "igDockContextCalcDropPosForDocking"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ DockNode.t)) @->
        (ptr (lift_typ Window.t)) @-> (ptr (lift_typ DockNode.t)) @->
        (lift_typ dir_t) @-> bool @-> (ptr (lift_typ Vec2.t))
        @-> returning bool)
  let dock_context_find_node_by_id =
    foreign "igDockContextFindNodeByID"
      ((ptr (lift_typ Context.t)) @-> (lift_typ id_t)
        @-> returning (ptr (lift_typ DockNode.t)))
  let dock_node_window_menu_handler_default =
    foreign "igDockNodeWindowMenuHandler_Default"
      ((ptr (lift_typ Context.t)) @-> (ptr (lift_typ DockNode.t)) @->
        (ptr (lift_typ TabBar.t)) @-> returning void)
  let dock_node_begin_amend_tab_bar =
    foreign "igDockNodeBeginAmendTabBar"
      ((ptr (lift_typ DockNode.t)) @-> returning bool)
  let dock_node_end_amend_tab_bar =
    foreign "igDockNodeEndAmendTabBar" (void @-> returning void)
  let dock_node_get_root_node =
    foreign "igDockNodeGetRootNode"
      ((ptr (lift_typ DockNode.t)) @-> returning (ptr (lift_typ DockNode.t)))
  let dock_node_is_in_hierarchy_of =
    foreign "igDockNodeIsInHierarchyOf"
      ((ptr (lift_typ DockNode.t)) @-> (ptr (lift_typ DockNode.t))
        @-> returning bool)
  let dock_node_get_depth =
    foreign "igDockNodeGetDepth"
      ((ptr (lift_typ DockNode.t)) @-> returning int)
  let dock_node_get_window_menu_button_id =
    foreign "igDockNodeGetWindowMenuButtonId"
      ((ptr (lift_typ DockNode.t)) @-> returning (lift_typ id_t))
  let get_window_dock_node =
    foreign "igGetWindowDockNode"
      (void @-> returning (ptr (lift_typ DockNode.t)))
  let get_window_always_want_own_tab_bar =
    foreign "igGetWindowAlwaysWantOwnTabBar"
      ((ptr (lift_typ Window.t)) @-> returning bool)
  let begin_docked =
    foreign "igBeginDocked"
      ((ptr (lift_typ Window.t)) @-> (ptr bool) @-> returning void)
  let begin_dockable_drag_drop_source =
    foreign "igBeginDockableDragDropSource"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let begin_dockable_drag_drop_target =
    foreign "igBeginDockableDragDropTarget"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let set_window_dock =
    foreign "igSetWindowDock"
      ((ptr (lift_typ Window.t)) @-> (lift_typ id_t) @-> (lift_typ cond_t)
        @-> returning void)
  let dock_builder_dock_window =
    foreign "igDockBuilderDockWindow"
      (string @-> (lift_typ id_t) @-> returning void)
  let dock_builder_get_node =
    foreign "igDockBuilderGetNode"
      ((lift_typ id_t) @-> returning (ptr (lift_typ DockNode.t)))
  let dock_builder_get_central_node =
    foreign "igDockBuilderGetCentralNode"
      ((lift_typ id_t) @-> returning (ptr (lift_typ DockNode.t)))
  let dock_builder_add_node =
    foreign "igDockBuilderAddNode"
      ((lift_typ id_t) @-> (lift_typ dock_node_flags_t)
        @-> returning (lift_typ id_t))
  let dock_builder_remove_node =
    foreign "igDockBuilderRemoveNode" ((lift_typ id_t) @-> returning void)
  let dock_builder_remove_node_docked_windows =
    foreign "igDockBuilderRemoveNodeDockedWindows"
      ((lift_typ id_t) @-> bool @-> returning void)
  let dock_builder_remove_node_child_nodes =
    foreign "igDockBuilderRemoveNodeChildNodes"
      ((lift_typ id_t) @-> returning void)
  let dock_builder_set_node_pos =
    foreign "igDockBuilderSetNodePos"
      ((lift_typ id_t) @-> (lift_typ Vec2.t) @-> returning void)
  let dock_builder_set_node_size =
    foreign "igDockBuilderSetNodeSize"
      ((lift_typ id_t) @-> (lift_typ Vec2.t) @-> returning void)
  let dock_builder_split_node =
    foreign "igDockBuilderSplitNode"
      ((lift_typ id_t) @-> (lift_typ dir_t) @-> float @-> (ptr (lift_typ id_t))
        @-> (ptr (lift_typ id_t)) @-> returning (lift_typ id_t))
  let dock_builder_copy_dock_space =
    foreign "igDockBuilderCopyDockSpace"
      ((lift_typ id_t) @-> (lift_typ id_t) @->
        (ptr (lift_typ Vector_const_charPtr.t)) @-> returning void)
  let dock_builder_copy_node =
    foreign "igDockBuilderCopyNode"
      ((lift_typ id_t) @-> (lift_typ id_t) @-> (ptr (lift_typ Vector_ImId.t))
        @-> returning void)
  let dock_builder_copy_window_settings =
    foreign "igDockBuilderCopyWindowSettings"
      (string @-> string @-> returning void)
  let dock_builder_finish =
    foreign "igDockBuilderFinish" ((lift_typ id_t) @-> returning void)
  let push_focus_scope =
    foreign "igPushFocusScope" ((lift_typ id_t) @-> returning void)
  let pop_focus_scope = foreign "igPopFocusScope" (void @-> returning void)
  let get_current_focus_scope =
    foreign "igGetCurrentFocusScope" (void @-> returning (lift_typ id_t))
  let is_drag_drop_active =
    foreign "igIsDragDropActive" (void @-> returning bool)
  let begin_drag_drop_target_custom =
    foreign "igBeginDragDropTargetCustom"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> returning bool)
  let clear_drag_drop = foreign "igClearDragDrop" (void @-> returning void)
  let is_drag_drop_payload_being_accepted =
    foreign "igIsDragDropPayloadBeingAccepted" (void @-> returning bool)
  let render_drag_drop_target_rect =
    foreign "igRenderDragDropTargetRect"
      ((lift_typ Rect.t) @-> (lift_typ Rect.t) @-> returning void)
  let get_typing_select_request =
    foreign "igGetTypingSelectRequest"
      ((lift_typ typing_select_flags_t)
        @-> returning (ptr (lift_typ TypingSelectRequest.t)))
  let typing_select_find_match =
    foreign "igTypingSelectFindMatch"
      ((ptr (lift_typ TypingSelectRequest.t)) @-> int @-> get_item_name_func_t
        @-> (ptr void) @-> int @-> returning int)
  let typing_select_find_next_single_char_match =
    foreign "igTypingSelectFindNextSingleCharMatch"
      ((ptr (lift_typ TypingSelectRequest.t)) @-> int @-> get_item_name_func_t
        @-> (ptr void) @-> int @-> returning int)
  let typing_select_find_best_leading_match =
    foreign "igTypingSelectFindBestLeadingMatch"
      ((ptr (lift_typ TypingSelectRequest.t)) @-> int @-> get_item_name_func_t
        @-> (ptr void) @-> returning int)
  let set_window_clip_rect_before_set_channel =
    foreign "igSetWindowClipRectBeforeSetChannel"
      ((ptr (lift_typ Window.t)) @-> (lift_typ Rect.t) @-> returning void)
  let begin_columns =
    foreign "igBeginColumns"
      (string @-> int @-> (lift_typ old_column_flags_t) @-> returning void)
  let end_columns = foreign "igEndColumns" (void @-> returning void)
  let push_column_clip_rect =
    foreign "igPushColumnClipRect" (int @-> returning void)
  let push_columns_background =
    foreign "igPushColumnsBackground" (void @-> returning void)
  let pop_columns_background =
    foreign "igPopColumnsBackground" (void @-> returning void)
  let get_columns_id =
    foreign "igGetColumnsID" (string @-> int @-> returning (lift_typ id_t))
  let find_or_create_columns =
    foreign "igFindOrCreateColumns"
      ((ptr (lift_typ Window.t)) @-> (lift_typ id_t)
        @-> returning (ptr (lift_typ OldColumns.t)))
  let get_column_offset_from_norm =
    foreign "igGetColumnOffsetFromNorm"
      ((ptr (lift_typ OldColumns.t)) @-> float @-> returning float)
  let get_column_norm_from_offset =
    foreign "igGetColumnNormFromOffset"
      ((ptr (lift_typ OldColumns.t)) @-> float @-> returning float)
  let table_open_context_menu =
    foreign "igTableOpenContextMenu" (int @-> returning void)
  let table_set_column_width =
    foreign "igTableSetColumnWidth" (int @-> float @-> returning void)
  let table_set_column_sort_direction =
    foreign "igTableSetColumnSortDirection"
      (int @-> (lift_typ sort_direction_t) @-> bool @-> returning void)
  let table_get_hovered_column =
    foreign "igTableGetHoveredColumn" (void @-> returning int)
  let table_get_hovered_row =
    foreign "igTableGetHoveredRow" (void @-> returning int)
  let table_get_header_row_height =
    foreign "igTableGetHeaderRowHeight" (void @-> returning float)
  let table_get_header_angled_max_label_width =
    foreign "igTableGetHeaderAngledMaxLabelWidth" (void @-> returning float)
  let table_push_background_channel =
    foreign "igTablePushBackgroundChannel" (void @-> returning void)
  let table_pop_background_channel =
    foreign "igTablePopBackgroundChannel" (void @-> returning void)
  let table_angled_headers_row_ex =
    foreign "igTableAngledHeadersRowEx"
      ((lift_typ id_t) @-> float @-> float @->
        (ptr (lift_typ TableHeaderData.t)) @-> int @-> returning void)
  let get_current_table =
    foreign "igGetCurrentTable" (void @-> returning (ptr (lift_typ Table.t)))
  let table_find_by_id =
    foreign "igTableFindByID"
      ((lift_typ id_t) @-> returning (ptr (lift_typ Table.t)))
  let begin_table_ex =
    foreign "igBeginTableEx"
      (string @-> (lift_typ id_t) @-> int @-> (lift_typ table_flags_t) @->
        (lift_typ Vec2.t) @-> float @-> returning bool)
  let table_begin_init_memory =
    foreign "igTableBeginInitMemory"
      ((ptr (lift_typ Table.t)) @-> int @-> returning void)
  let table_begin_apply_requests =
    foreign "igTableBeginApplyRequests"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_setup_draw_channels =
    foreign "igTableSetupDrawChannels"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_update_layout =
    foreign "igTableUpdateLayout" ((ptr (lift_typ Table.t)) @-> returning void)
  let table_update_borders =
    foreign "igTableUpdateBorders"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_update_columns_weight_from_width =
    foreign "igTableUpdateColumnsWeightFromWidth"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_draw_borders =
    foreign "igTableDrawBorders" ((ptr (lift_typ Table.t)) @-> returning void)
  let table_draw_default_context_menu =
    foreign "igTableDrawDefaultContextMenu"
      ((ptr (lift_typ Table.t)) @-> (lift_typ table_flags_t)
        @-> returning void)
  let table_begin_context_menu_popup =
    foreign "igTableBeginContextMenuPopup"
      ((ptr (lift_typ Table.t)) @-> returning bool)
  let table_merge_draw_channels =
    foreign "igTableMergeDrawChannels"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_get_instance_data =
    foreign "igTableGetInstanceData"
      ((ptr (lift_typ Table.t)) @-> int
        @-> returning (ptr (lift_typ TableInstanceData.t)))
  let table_get_instance_id =
    foreign "igTableGetInstanceID"
      ((ptr (lift_typ Table.t)) @-> int @-> returning (lift_typ id_t))
  let table_sort_specs_sanitize =
    foreign "igTableSortSpecsSanitize"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_sort_specs_build =
    foreign "igTableSortSpecsBuild"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_get_column_next_sort_direction =
    foreign "igTableGetColumnNextSortDirection"
      ((ptr (lift_typ TableColumn.t))
        @-> returning (lift_typ sort_direction_t))
  let table_fix_column_sort_direction =
    foreign "igTableFixColumnSortDirection"
      ((ptr (lift_typ Table.t)) @-> (ptr (lift_typ TableColumn.t))
        @-> returning void)
  let table_get_column_width_auto =
    foreign "igTableGetColumnWidthAuto"
      ((ptr (lift_typ Table.t)) @-> (ptr (lift_typ TableColumn.t))
        @-> returning float)
  let table_begin_row =
    foreign "igTableBeginRow" ((ptr (lift_typ Table.t)) @-> returning void)
  let table_end_row =
    foreign "igTableEndRow" ((ptr (lift_typ Table.t)) @-> returning void)
  let table_begin_cell =
    foreign "igTableBeginCell"
      ((ptr (lift_typ Table.t)) @-> int @-> returning void)
  let table_end_cell =
    foreign "igTableEndCell" ((ptr (lift_typ Table.t)) @-> returning void)
  let table_get_cell_bg_rect =
    foreign "igTableGetCellBgRect"
      ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ Table.t)) @-> int
        @-> returning void)
  let table_get_column_name_table_ptr =
    foreign "igTableGetColumnName_TablePtr"
      ((ptr (lift_typ Table.t)) @-> int @-> returning string)
  let table_get_column_resize_id =
    foreign "igTableGetColumnResizeID"
      ((ptr (lift_typ Table.t)) @-> int @-> int @-> returning (lift_typ id_t))
  let table_get_max_column_width =
    foreign "igTableGetMaxColumnWidth"
      ((ptr (lift_typ Table.t)) @-> int @-> returning float)
  let table_set_column_width_auto_single =
    foreign "igTableSetColumnWidthAutoSingle"
      ((ptr (lift_typ Table.t)) @-> int @-> returning void)
  let table_set_column_width_auto_all =
    foreign "igTableSetColumnWidthAutoAll"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_remove =
    foreign "igTableRemove" ((ptr (lift_typ Table.t)) @-> returning void)
  let table_gc_compact_transient_buffers_table_ptr =
    foreign "igTableGcCompactTransientBuffers_TablePtr"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_gc_compact_transient_buffers_table_temp_data_ptr =
    foreign "igTableGcCompactTransientBuffers_TableTempDataPtr"
      ((ptr (lift_typ TableTempData.t)) @-> returning void)
  let table_gc_compact_settings =
    foreign "igTableGcCompactSettings" (void @-> returning void)
  let table_load_settings =
    foreign "igTableLoadSettings" ((ptr (lift_typ Table.t)) @-> returning void)
  let table_save_settings =
    foreign "igTableSaveSettings" ((ptr (lift_typ Table.t)) @-> returning void)
  let table_reset_settings =
    foreign "igTableResetSettings"
      ((ptr (lift_typ Table.t)) @-> returning void)
  let table_get_bound_settings =
    foreign "igTableGetBoundSettings"
      ((ptr (lift_typ Table.t)) @-> returning (ptr (lift_typ TableSettings.t)))
  let table_settings_add_settings_handler =
    foreign "igTableSettingsAddSettingsHandler" (void @-> returning void)
  let table_settings_create =
    foreign "igTableSettingsCreate"
      ((lift_typ id_t) @-> int @-> returning (ptr (lift_typ TableSettings.t)))
  let table_settings_find_by_id =
    foreign "igTableSettingsFindByID"
      ((lift_typ id_t) @-> returning (ptr (lift_typ TableSettings.t)))
  let get_current_tab_bar =
    foreign "igGetCurrentTabBar" (void @-> returning (ptr (lift_typ TabBar.t)))
  let begin_tab_bar_ex =
    foreign "igBeginTabBarEx"
      ((ptr (lift_typ TabBar.t)) @-> (lift_typ Rect.t) @->
        (lift_typ tab_bar_flags_t) @-> returning bool)
  let tab_bar_find_tab_by_id =
    foreign "igTabBarFindTabByID"
      ((ptr (lift_typ TabBar.t)) @-> (lift_typ id_t)
        @-> returning (ptr (lift_typ TabItem.t)))
  let tab_bar_find_tab_by_order =
    foreign "igTabBarFindTabByOrder"
      ((ptr (lift_typ TabBar.t)) @-> int
        @-> returning (ptr (lift_typ TabItem.t)))
  let tab_bar_find_most_recently_selected_tab_for_active_window =
    foreign "igTabBarFindMostRecentlySelectedTabForActiveWindow"
      ((ptr (lift_typ TabBar.t)) @-> returning (ptr (lift_typ TabItem.t)))
  let tab_bar_get_current_tab =
    foreign "igTabBarGetCurrentTab"
      ((ptr (lift_typ TabBar.t)) @-> returning (ptr (lift_typ TabItem.t)))
  let tab_bar_get_tab_order =
    foreign "igTabBarGetTabOrder"
      ((ptr (lift_typ TabBar.t)) @-> (ptr (lift_typ TabItem.t))
        @-> returning int)
  let tab_bar_get_tab_name =
    foreign "igTabBarGetTabName"
      ((ptr (lift_typ TabBar.t)) @-> (ptr (lift_typ TabItem.t))
        @-> returning string)
  let tab_bar_add_tab =
    foreign "igTabBarAddTab"
      ((ptr (lift_typ TabBar.t)) @-> (lift_typ tab_item_flags_t) @->
        (ptr (lift_typ Window.t)) @-> returning void)
  let tab_bar_remove_tab =
    foreign "igTabBarRemoveTab"
      ((ptr (lift_typ TabBar.t)) @-> (lift_typ id_t) @-> returning void)
  let tab_bar_close_tab =
    foreign "igTabBarCloseTab"
      ((ptr (lift_typ TabBar.t)) @-> (ptr (lift_typ TabItem.t))
        @-> returning void)
  let tab_bar_queue_focus =
    foreign "igTabBarQueueFocus"
      ((ptr (lift_typ TabBar.t)) @-> (ptr (lift_typ TabItem.t))
        @-> returning void)
  let tab_bar_queue_reorder =
    foreign "igTabBarQueueReorder"
      ((ptr (lift_typ TabBar.t)) @-> (ptr (lift_typ TabItem.t)) @-> int
        @-> returning void)
  let tab_bar_queue_reorder_from_mouse_pos =
    foreign "igTabBarQueueReorderFromMousePos"
      ((ptr (lift_typ TabBar.t)) @-> (ptr (lift_typ TabItem.t)) @->
        (lift_typ Vec2.t) @-> returning void)
  let tab_bar_process_reorder =
    foreign "igTabBarProcessReorder"
      ((ptr (lift_typ TabBar.t)) @-> returning bool)
  let tab_item_ex =
    foreign "igTabItemEx"
      ((ptr (lift_typ TabBar.t)) @-> string @-> (ptr bool) @->
        (lift_typ tab_item_flags_t) @-> (ptr (lift_typ Window.t))
        @-> returning bool)
  let tab_item_calc_size_str =
    foreign "igTabItemCalcSize_Str"
      ((ptr (lift_typ Vec2.t)) @-> string @-> bool @-> returning void)
  let tab_item_calc_size_window_ptr =
    foreign "igTabItemCalcSize_WindowPtr"
      ((ptr (lift_typ Vec2.t)) @-> (ptr (lift_typ Window.t))
        @-> returning void)
  let tab_item_background =
    foreign "igTabItemBackground"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Rect.t) @->
        (lift_typ tab_item_flags_t) @-> (lift_typ u32_t) @-> returning void)
  let tab_item_label_and_close_button =
    foreign "igTabItemLabelAndCloseButton"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Rect.t) @->
        (lift_typ tab_item_flags_t) @-> (lift_typ Vec2.t) @-> string @->
        (lift_typ id_t) @-> (lift_typ id_t) @-> bool @-> (ptr bool) @->
        (ptr bool) @-> returning void)
  let render_text =
    foreign "igRenderText"
      ((lift_typ Vec2.t) @-> string @-> string @-> bool @-> returning void)
  let render_text_wrapped =
    foreign "igRenderTextWrapped"
      ((lift_typ Vec2.t) @-> string @-> string @-> float @-> returning void)
  let render_text_clipped =
    foreign "igRenderTextClipped"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> string @-> string @->
        (ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t) @->
        (ptr (lift_typ Rect.t)) @-> returning void)
  let render_text_clipped_ex =
    foreign "igRenderTextClippedEx"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> string @-> string @-> (ptr (lift_typ Vec2.t)) @-> (lift_typ Vec2.t)
        @-> (ptr (lift_typ Rect.t)) @-> returning void)
  let render_text_ellipsis =
    foreign "igRenderTextEllipsis"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> float @-> float @-> string @-> string @-> (ptr (lift_typ Vec2.t))
        @-> returning void)
  let render_frame =
    foreign "igRenderFrame"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> bool
        @-> float @-> returning void)
  let render_frame_border =
    foreign "igRenderFrameBorder"
      ((lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> float @-> returning void)
  let render_color_rect_with_alpha_checkerboard =
    foreign "igRenderColorRectWithAlphaCheckerboard"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> (lift_typ u32_t) @-> float @-> (lift_typ Vec2.t) @-> float @->
        (lift_typ draw_flags_t) @-> returning void)
  let render_nav_highlight =
    foreign "igRenderNavHighlight"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @->
        (lift_typ nav_highlight_flags_t) @-> returning void)
  let find_rendered_text_end =
    foreign "igFindRenderedTextEnd" (string @-> string @-> returning string)
  let render_mouse_cursor =
    foreign "igRenderMouseCursor"
      ((lift_typ Vec2.t) @-> float @-> (lift_typ mouse_cursor_t) @->
        (lift_typ u32_t) @-> (lift_typ u32_t) @-> (lift_typ u32_t)
        @-> returning void)
  let render_arrow =
    foreign "igRenderArrow"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> (lift_typ u32_t)
        @-> (lift_typ dir_t) @-> float @-> returning void)
  let render_bullet =
    foreign "igRenderBullet"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> (lift_typ u32_t)
        @-> returning void)
  let render_check_mark =
    foreign "igRenderCheckMark"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> (lift_typ u32_t)
        @-> float @-> returning void)
  let render_arrow_pointing_at =
    foreign "igRenderArrowPointingAt"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t)
        @-> (lift_typ dir_t) @-> (lift_typ u32_t) @-> returning void)
  let render_arrow_dock_menu =
    foreign "igRenderArrowDockMenu"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Vec2.t) @-> float @->
        (lift_typ u32_t) @-> returning void)
  let render_rect_filled_range_h =
    foreign "igRenderRectFilledRangeH"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Rect.t) @-> (lift_typ u32_t)
        @-> float @-> float @-> float @-> returning void)
  let render_rect_filled_with_hole =
    foreign "igRenderRectFilledWithHole"
      ((ptr (lift_typ DrawList.t)) @-> (lift_typ Rect.t) @-> (lift_typ Rect.t)
        @-> (lift_typ u32_t) @-> float @-> returning void)
  let calc_rounding_flags_for_rect_in_rect =
    foreign "igCalcRoundingFlagsForRectInRect"
      ((lift_typ Rect.t) @-> (lift_typ Rect.t) @-> float
        @-> returning (lift_typ draw_flags_t))
  let text_ex =
    foreign "igTextEx"
      (string @-> string @-> (lift_typ text_flags_t) @-> returning void)
  let button_ex =
    foreign "igButtonEx"
      (string @-> (lift_typ Vec2.t) @-> (lift_typ button_flags_t)
        @-> returning bool)
  let arrow_button_ex =
    foreign "igArrowButtonEx"
      (string @-> (lift_typ dir_t) @-> (lift_typ Vec2.t) @->
        (lift_typ button_flags_t) @-> returning bool)
  let image_button_ex =
    foreign "igImageButtonEx"
      ((lift_typ id_t) @-> (lift_typ texture_id_t) @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec4.t) @->
        (lift_typ Vec4.t) @-> (lift_typ button_flags_t) @-> returning bool)
  let separator_ex =
    foreign "igSeparatorEx"
      ((lift_typ separator_flags_t) @-> float @-> returning void)
  let separator_text_ex =
    foreign "igSeparatorTextEx"
      ((lift_typ id_t) @-> string @-> string @-> float @-> returning void)
  let checkbox_flags_s64_ptr =
    foreign "igCheckboxFlags_S64Ptr"
      (string @-> (ptr (lift_typ s64_t)) @-> (lift_typ s64_t)
        @-> returning bool)
  let checkbox_flags_u64_ptr =
    foreign "igCheckboxFlags_U64Ptr"
      (string @-> (ptr (lift_typ u64_t)) @-> (lift_typ u64_t)
        @-> returning bool)
  let close_button =
    foreign "igCloseButton"
      ((lift_typ id_t) @-> (lift_typ Vec2.t) @-> returning bool)
  let collapse_button =
    foreign "igCollapseButton"
      ((lift_typ id_t) @-> (lift_typ Vec2.t) @-> (ptr (lift_typ DockNode.t))
        @-> returning bool)
  let scrollbar = foreign "igScrollbar" ((lift_typ Axis.t) @-> returning void)
  let scrollbar_ex =
    foreign "igScrollbarEx"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> (lift_typ Axis.t) @->
        (ptr (lift_typ s64_t)) @-> (lift_typ s64_t) @-> (lift_typ s64_t) @->
        (lift_typ draw_flags_t) @-> returning bool)
  let get_window_scrollbar_rect =
    foreign "igGetWindowScrollbarRect"
      ((ptr (lift_typ Rect.t)) @-> (ptr (lift_typ Window.t)) @->
        (lift_typ Axis.t) @-> returning void)
  let get_window_scrollbar_id =
    foreign "igGetWindowScrollbarID"
      ((ptr (lift_typ Window.t)) @-> (lift_typ Axis.t)
        @-> returning (lift_typ id_t))
  let get_window_resize_corner_id =
    foreign "igGetWindowResizeCornerID"
      ((ptr (lift_typ Window.t)) @-> int @-> returning (lift_typ id_t))
  let get_window_resize_border_id =
    foreign "igGetWindowResizeBorderID"
      ((ptr (lift_typ Window.t)) @-> (lift_typ dir_t)
        @-> returning (lift_typ id_t))
  let button_behavior =
    foreign "igButtonBehavior"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> (ptr bool) @-> (ptr bool) @->
        (lift_typ button_flags_t) @-> returning bool)
  let drag_behavior =
    foreign "igDragBehavior"
      ((lift_typ id_t) @-> (lift_typ data_type_t) @-> (ptr void) @-> float @->
        (ptr void) @-> (ptr void) @-> string @-> (lift_typ slider_flags_t)
        @-> returning bool)
  let slider_behavior =
    foreign "igSliderBehavior"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> (lift_typ data_type_t) @->
        (ptr void) @-> (ptr void) @-> (ptr void) @-> string @->
        (lift_typ slider_flags_t) @-> (ptr (lift_typ Rect.t))
        @-> returning bool)
  let splitter_behavior =
    foreign "igSplitterBehavior"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> (lift_typ Axis.t) @->
        (ptr float) @-> (ptr float) @-> float @-> float @-> float @-> float @->
        (lift_typ u32_t) @-> returning bool)
  let tree_node_behavior =
    foreign "igTreeNodeBehavior"
      ((lift_typ id_t) @-> (lift_typ tree_node_flags_t) @-> string @-> string
        @-> returning bool)
  let tree_push_override_id =
    foreign "igTreePushOverrideID" ((lift_typ id_t) @-> returning void)
  let tree_node_set_open =
    foreign "igTreeNodeSetOpen" ((lift_typ id_t) @-> bool @-> returning void)
  let tree_node_update_next_open =
    foreign "igTreeNodeUpdateNextOpen"
      ((lift_typ id_t) @-> (lift_typ tree_node_flags_t) @-> returning bool)
  let set_next_item_selection_user_data =
    foreign "igSetNextItemSelectionUserData"
      ((lift_typ selection_user_data_t) @-> returning void)
  let data_type_get_info =
    foreign "igDataTypeGetInfo"
      ((lift_typ data_type_t) @-> returning (ptr (lift_typ DataTypeInfo.t)))
  let data_type_format_string =
    foreign "igDataTypeFormatString"
      (string @-> int @-> (lift_typ data_type_t) @-> (ptr void) @-> string
        @-> returning int)
  let data_type_apply_op =
    foreign "igDataTypeApplyOp"
      ((lift_typ data_type_t) @-> int @-> (ptr void) @-> (ptr void) @->
        (ptr void) @-> returning void)
  let data_type_apply_from_text =
    foreign "igDataTypeApplyFromText"
      (string @-> (lift_typ data_type_t) @-> (ptr void) @-> string
        @-> returning bool)
  let data_type_compare =
    foreign "igDataTypeCompare"
      ((lift_typ data_type_t) @-> (ptr void) @-> (ptr void) @-> returning int)
  let data_type_clamp =
    foreign "igDataTypeClamp"
      ((lift_typ data_type_t) @-> (ptr void) @-> (ptr void) @-> (ptr void)
        @-> returning bool)
  let input_text_ex =
    foreign "igInputTextEx"
      (string @-> string @-> string @-> int @-> (lift_typ Vec2.t) @->
        (lift_typ input_text_flags_t) @-> input_text_callback_t @-> (ptr void)
        @-> returning bool)
  let input_text_deactivate_hook =
    foreign "igInputTextDeactivateHook" ((lift_typ id_t) @-> returning void)
  let temp_input_text =
    foreign "igTempInputText"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> string @-> string @-> int @->
        (lift_typ input_text_flags_t) @-> returning bool)
  let temp_input_scalar =
    foreign "igTempInputScalar"
      ((lift_typ Rect.t) @-> (lift_typ id_t) @-> string @->
        (lift_typ data_type_t) @-> (ptr void) @-> string @-> (ptr void) @->
        (ptr void) @-> returning bool)
  let temp_input_is_active =
    foreign "igTempInputIsActive" ((lift_typ id_t) @-> returning bool)
  let get_input_text_state =
    foreign "igGetInputTextState"
      ((lift_typ id_t) @-> returning (ptr (lift_typ InputTextState.t)))
  let color_tooltip =
    foreign "igColorTooltip"
      (string @-> (ptr float) @-> (lift_typ color_edit_flags_t)
        @-> returning void)
  let color_edit_options_popup =
    foreign "igColorEditOptionsPopup"
      ((ptr float) @-> (lift_typ color_edit_flags_t) @-> returning void)
  let color_picker_options_popup =
    foreign "igColorPickerOptionsPopup"
      ((ptr float) @-> (lift_typ color_edit_flags_t) @-> returning void)
  let plot_ex =
    foreign "igPlotEx"
      ((lift_typ PlotType.t) @-> string @-> values_getter_t @-> (ptr void) @->
        int @-> int @-> string @-> float @-> float @-> (lift_typ Vec2.t)
        @-> returning int)
  let shade_verts_linear_color_gradient_keep_alpha =
    foreign "igShadeVertsLinearColorGradientKeepAlpha"
      ((ptr (lift_typ DrawList.t)) @-> int @-> int @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (lift_typ u32_t) @-> (lift_typ u32_t)
        @-> returning void)
  let shade_verts_linear_uv =
    foreign "igShadeVertsLinearUV"
      ((ptr (lift_typ DrawList.t)) @-> int @-> int @-> (lift_typ Vec2.t) @->
        (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> (lift_typ Vec2.t) @-> bool
        @-> returning void)
  let shade_verts_transform_pos =
    foreign "igShadeVertsTransformPos"
      ((ptr (lift_typ DrawList.t)) @-> int @-> int @-> (lift_typ Vec2.t) @->
        float @-> float @-> (lift_typ Vec2.t) @-> returning void)
  let gc_compact_transient_misc_buffers =
    foreign "igGcCompactTransientMiscBuffers" (void @-> returning void)
  let gc_compact_transient_window_buffers =
    foreign "igGcCompactTransientWindowBuffers"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let gc_awake_transient_window_buffers =
    foreign "igGcAwakeTransientWindowBuffers"
      ((ptr (lift_typ Window.t)) @-> returning void)
  let debug_log = foreign "igDebugLog" (string @-> returning void)
  let debug_log_v =
    foreign "igDebugLogV" (string @-> (lift_typ va_list_t) @-> returning void)
  let debug_alloc_hook =
    foreign "igDebugAllocHook"
      ((ptr (lift_typ DebugAllocInfo.t)) @-> int @-> (ptr void) @->
        (lift_typ int_as_size_t) @-> returning void)
  let error_check_end_frame_recover =
    foreign "igErrorCheckEndFrameRecover"
      (error_log_callback_t @-> (ptr void) @-> returning void)
  let error_check_end_window_recover =
    foreign "igErrorCheckEndWindowRecover"
      (error_log_callback_t @-> (ptr void) @-> returning void)
  let error_check_using_set_cursor_pos_to_extend_parent_boundaries =
    foreign "igErrorCheckUsingSetCursorPosToExtendParentBoundaries"
      (void @-> returning void)
  let debug_draw_cursor_pos =
    foreign "igDebugDrawCursorPos" ((lift_typ u32_t) @-> returning void)
  let debug_draw_line_extents =
    foreign "igDebugDrawLineExtents" ((lift_typ u32_t) @-> returning void)
  let debug_draw_item_rect =
    foreign "igDebugDrawItemRect" ((lift_typ u32_t) @-> returning void)
  let debug_locate_item =
    foreign "igDebugLocateItem" ((lift_typ id_t) @-> returning void)
  let debug_locate_item_on_hover =
    foreign "igDebugLocateItemOnHover" ((lift_typ id_t) @-> returning void)
  let debug_locate_item_resolve_with_last_item =
    foreign "igDebugLocateItemResolveWithLastItem" (void @-> returning void)
  let debug_break_clear_data =
    foreign "igDebugBreakClearData" (void @-> returning void)
  let debug_break_button =
    foreign "igDebugBreakButton" (string @-> string @-> returning bool)
  let debug_break_button_tooltip =
    foreign "igDebugBreakButtonTooltip" (bool @-> string @-> returning void)
  let show_font_atlas =
    foreign "igShowFontAtlas" ((ptr (lift_typ FontAtlas.t)) @-> returning void)
  let debug_hook_id_info =
    foreign "igDebugHookIdInfo"
      ((lift_typ id_t) @-> (lift_typ data_type_t) @-> (ptr void) @-> 
        (ptr void) @-> returning void)
  let debug_node_columns =
    foreign "igDebugNodeColumns"
      ((ptr (lift_typ OldColumns.t)) @-> returning void)
  let debug_node_dock_node =
    foreign "igDebugNodeDockNode"
      ((ptr (lift_typ DockNode.t)) @-> string @-> returning void)
  let debug_node_draw_list =
    foreign "igDebugNodeDrawList"
      ((ptr (lift_typ Window.t)) @-> (ptr (lift_typ ViewportP.t)) @->
        (ptr (lift_typ DrawList.t)) @-> string @-> returning void)
  let debug_node_draw_cmd_show_mesh_and_bounding_box =
    foreign "igDebugNodeDrawCmdShowMeshAndBoundingBox"
      ((ptr (lift_typ DrawList.t)) @-> (ptr (lift_typ DrawList.t)) @->
        (ptr (lift_typ DrawCmd.t)) @-> bool @-> bool @-> returning void)
  let debug_node_font =
    foreign "igDebugNodeFont" ((ptr (lift_typ Font.t)) @-> returning void)
  let debug_node_font_glyph =
    foreign "igDebugNodeFontGlyph"
      ((ptr (lift_typ Font.t)) @-> (ptr (lift_typ FontGlyph.t))
        @-> returning void)
  let debug_node_storage =
    foreign "igDebugNodeStorage"
      ((ptr (lift_typ Storage.t)) @-> string @-> returning void)
  let debug_node_tab_bar =
    foreign "igDebugNodeTabBar"
      ((ptr (lift_typ TabBar.t)) @-> string @-> returning void)
  let debug_node_table =
    foreign "igDebugNodeTable" ((ptr (lift_typ Table.t)) @-> returning void)
  let debug_node_table_settings =
    foreign "igDebugNodeTableSettings"
      ((ptr (lift_typ TableSettings.t)) @-> returning void)
  let debug_node_input_text_state =
    foreign "igDebugNodeInputTextState"
      ((ptr (lift_typ InputTextState.t)) @-> returning void)
  let debug_node_typing_select_state =
    foreign "igDebugNodeTypingSelectState"
      ((ptr (lift_typ TypingSelectState.t)) @-> returning void)
  let debug_node_window =
    foreign "igDebugNodeWindow"
      ((ptr (lift_typ Window.t)) @-> string @-> returning void)
  let debug_node_window_settings =
    foreign "igDebugNodeWindowSettings"
      ((ptr (lift_typ WindowSettings.t)) @-> returning void)
  let debug_node_windows_list =
    foreign "igDebugNodeWindowsList"
      ((ptr (lift_typ Vector_ImWindowPtr.t)) @-> string @-> returning void)
  let debug_node_windows_list_by_begin_stack_parent =
    foreign "igDebugNodeWindowsListByBeginStackParent"
      ((ptr (ptr (lift_typ Window.t))) @-> int @-> (ptr (lift_typ Window.t))
        @-> returning void)
  let debug_node_viewport =
    foreign "igDebugNodeViewport"
      ((ptr (lift_typ ViewportP.t)) @-> returning void)
  let debug_render_keyboard_preview =
    foreign "igDebugRenderKeyboardPreview"
      ((ptr (lift_typ DrawList.t)) @-> returning void)
  let debug_render_viewport_thumbnail =
    foreign "igDebugRenderViewportThumbnail"
      ((ptr (lift_typ DrawList.t)) @-> (ptr (lift_typ ViewportP.t)) @->
        (lift_typ Rect.t) @-> returning void)
  let im_font_atlas_get_builder_for_stb_truetype =
    foreign "igImFontAtlasGetBuilderForStbTruetype"
      (void @-> returning (ptr (lift_typ FontBuilderIo.t)))
  let im_font_atlas_update_config_data_pointers =
    foreign "igImFontAtlasUpdateConfigDataPointers"
      ((ptr (lift_typ FontAtlas.t)) @-> returning void)
  let im_font_atlas_build_init =
    foreign "igImFontAtlasBuildInit"
      ((ptr (lift_typ FontAtlas.t)) @-> returning void)
  let im_font_atlas_build_setup_font =
    foreign "igImFontAtlasBuildSetupFont"
      ((ptr (lift_typ FontAtlas.t)) @-> (ptr (lift_typ Font.t)) @->
        (ptr (lift_typ FontConfig.t)) @-> float @-> float @-> returning void)
  let im_font_atlas_build_pack_custom_rects =
    foreign "igImFontAtlasBuildPackCustomRects"
      ((ptr (lift_typ FontAtlas.t)) @-> (ptr void) @-> returning void)
  let im_font_atlas_build_finish =
    foreign "igImFontAtlasBuildFinish"
      ((ptr (lift_typ FontAtlas.t)) @-> returning void)
  let im_font_atlas_build_render8bpp_rect_from_string =
    foreign "igImFontAtlasBuildRender8bppRectFromString"
      ((ptr (lift_typ FontAtlas.t)) @-> int @-> int @-> int @-> int @-> string
        @-> char @-> (lift_typ int_as_uchar) @-> returning void)
  let im_font_atlas_build_render32bpp_rect_from_string =
    foreign "igImFontAtlasBuildRender32bppRectFromString"
      ((ptr (lift_typ FontAtlas.t)) @-> int @-> int @-> int @-> int @-> string
        @-> char @-> (lift_typ int_as_uint) @-> returning void)
  let im_font_atlas_build_multiply_calc_lookup_table =
    foreign "igImFontAtlasBuildMultiplyCalcLookupTable"
      ((ptr (lift_typ int_as_uchar)) @-> float @-> returning void)
  let im_font_atlas_build_multiply_rect_alpha8 =
    foreign "igImFontAtlasBuildMultiplyRectAlpha8"
      ((ptr (lift_typ int_as_uchar)) @-> (ptr (lift_typ int_as_uchar)) @-> int
        @-> int @-> int @-> int @-> int @-> returning void)
  let log_text = foreign "igLogText" (string @-> returning void)
  let get_flt_max = foreign "igGET_FLT_MAX" (void @-> returning float)
  let get_flt_min = foreign "igGET_FLT_MIN" (void @-> returning float)
  module ImVector = struct
    let im_wchar_create =
      foreign "ImVector_ImWchar_create"
        (void @-> returning (ptr (lift_typ Vector_ImWchar.t)))
    let im_wchar_destroy =
      foreign "ImVector_ImWchar_destroy"
        ((ptr (lift_typ Vector_ImWchar.t)) @-> returning void)
    let im_wchar_init =
      foreign "ImVector_ImWchar_Init"
        ((ptr (lift_typ Vector_ImWchar.t)) @-> returning void)
    let im_wchar_un_init =
      foreign "ImVector_ImWchar_UnInit"
        ((ptr (lift_typ Vector_ImWchar.t)) @-> returning void)
  end
  
end