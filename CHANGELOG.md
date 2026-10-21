# Changelog

## v1.93.0 (unreleased)

A fork of imguiml, published as `imguiml-ft`: the libraries are
`imguiml-ft` and `imguiml-ft.imguiml_impl` (and so on), with the same
modules as imguiml's.

### Dear ImGui 1.93.0

- Dear ImGui 1.93.0 (docking), from 1.90.6: cimgui's `1.93dock` tag,
  regenerated for ImGui's `v1.93.0-docking` tag. ImGui's GLFW and
  OpenGL3 backends follow.
- ImGui's API changes between the two show in the bindings. Among those
  most programs meet:
  - fonts: `PushFont` takes a size; the atlas is built as glyphs are
    needed, by a renderer that handles textures
    (`BackendFlags.renderer_has_textures`, which ImGui's own backends
    set). Without a renderer, set that flag rather than building the
    atlas (`GetTexDataAsRGBA32` is gone);
  - getters return vectors by value;
  - `OpenPopup` returns whether it opened;
  - `AddRect` takes its thickness before its flags; `AddLine` and
    `AddCircle` take flags;
  - `ChildFlags.Border` is `Borders`;
  - `GetIO` is `get_io_nil`.
- Structs passed by value are bound once, with their plain names:
  `Types.Vec2` is cimgui's `ImVec2_c`, and so for `Vec4`, `Vec2i`, `Rect`
  and `TextureRef`.
- Structs with bit fields are opaque, since C cannot take the offset of
  their fields; in 1.93 they are `FontGlyph`, `FontBaked`, `DockNode`,
  `Window`, `WindowSettings`, `Table`, `TableColumn`, `TableSettings`,
  `TableColumnSettings` and a few internal ones.

### FreeType

- Fonts are loaded with FreeType instead of stb_truetype: CFF2 and
  variable fonts are read (a variable font's named instance in the upper
  16 bits of the font's index), and glyphs can be hinted, emboldened or
  coloured through `FontConfig.font_loader_flags`.
- FreeType's API is bound: `Bindings.ImGuiFreeType` and
  `Types.FreeTypeLoaderFlags`.
- The package depends on `conf-freetype`. CMake finds FreeType with its
  `FindFreetype` module, which needs no package configuration from the
  distribution.

### Unicode beyond U+FFFF

- `ImWchar` is 32 bits wide (`IMGUI_USE_WCHAR32`, defined in ImGui's
  `imconfig.h` and for the bindings): characters beyond U+FFFF, such as
  emoji, are no longer replaced by U+FFFD. Glyph ranges and the
  characters queued in `Io` are arrays of 32-bit values. C code that
  includes `cimgui.h` must define `IMGUI_USE_WCHAR32`.

### Build

- Builds on all architectures, arm64 included.
- Requires goblint-cil 2.0.5.
- The generator skips variadic functions.
- Include paths are relative to the dune files: the package builds when
  dune runs from anywhere, also as part of a larger dune workspace.
- The bindings promoted into `src` no longer carry the date they were
  generated: a build leaves them unchanged unless cimgui changes.
- The test compares its output with a file, without ppx_expect.

## v1.90.6

- Bindings to Dear ImGui 1.90.6 (docking) through cimgui, and to ImGui's
  GLFW and OpenGL3 backends.
