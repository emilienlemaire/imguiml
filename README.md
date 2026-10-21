# Imguiml-ft

This library contains bindings to [Dear ImGui](https://github.com/ocornut/imgui) using the
[cimgui](https://github.com/cimgui/cimgui) bindings.

It is a fork of [imguiml](https://github.com/emilienlemaire/imguiml),
updated to Dear ImGui 1.93.0 and loading fonts with FreeType, published
as `imguiml-ft` so as not to be mistaken for it. The modules are those
of imguiml (`Imguiml`, `Imguiml_impl`); the libraries are under
`imguiml-ft`.

Imguiml is the work of Emilien Lemaire: its binding generator, which
reads cimgui's header and writes the bindings, is the bulk of this
package. The fork is maintained by Frédéric Bour.

Check the [documentation](https://let-def.github.io/imguiml) to find the bindings.

## Versions

The version of the package is the version of Dear ImGui it binds, always
its docking branch. This one binds **Dear ImGui 1.93.0 (docking)**: its
`v1.93.0-docking` tag, through cimgui's `1.93dock` tag regenerated for
it (see [Updating ImGui](#updating-imgui)).

Fonts are loaded with **FreeType**, which ImGui uses in place of
stb_truetype: it reads CFF2 and variable fonts, hints, and can embolden
or colour glyphs. Its API is bound as `Bindings.ImGuiFreeType` and its
flags as `Types.FreeTypeLoaderFlags`, set per font in `FontConfig`'s
`font_loader_flags`.

Characters are 32 bits wide (`IMGUI_USE_WCHAR32`), so that text beyond
U+FFFF, such as emoji or rarer CJK, can be shown, given a font that has
it. `imgui.h` takes this from the `imconfig.h` it comes with; C code that
includes `cimgui.h` must define `IMGUI_USE_WCHAR32` itself, or its
`ImWchar` will not be ImGui's.

See [CHANGELOG.md](CHANGELOG.md) for what changed from 1.90.6.

## Libraries

- `imguiml-ft`: Dear ImGui, with its internal API (`imgui_internal.h`) and
  FreeType's.
- `imguiml-ft.imguiml_impl`: ImGui's GLFW and OpenGL3 backends.

## Building

Besides the opam dependencies, the build needs CMake, a C and a C++
compiler, and FreeType; `imguiml-ft.imguiml_impl` needs GLFW 3, GLEW and
OpenGL. The opam package asks for them through `conf-*` packages.

```sh
opam install . --deps-only --with-test
dune build
dune runtest
```

On macOS, build with `--profile macosx`.

The bindings in `src/` (`cimgui_*.ml`) are generated from `cimgui.h`
by `src/generator`, and promoted into the source tree when it changes, on
Linux.

## Updating ImGui

`cimgui/cimgui` is a copy of cimgui with Dear ImGui in its `imgui`
directory, both without their git history. To move to another version:

1. Take cimgui's tag for the version (`<version>dock`, on its
   `docking_inter` branch) and put Dear ImGui's `v<version>-docking` tag
   in its `imgui` directory, in place of the submodule.
2. Regenerate cimgui's bindings, from `cimgui/cimgui/generator`:
   `./generator.sh` (it needs LuaJIT and gcc). Leave out what it leaves
   behind there: `itemsarr.lua`, `preprocesed.h`.
3. Keep this repository's changes to `cimgui/cimgui/CMakeLists.txt`,
   which finds FreeType with CMake's `FindFreetype` module, and to
   `cimgui/cimgui/imgui/imconfig.h`, which defines `IMGUI_USE_WCHAR32`.
4. Copy ImGui's GLFW and OpenGL3 backends from `imgui/backends` to
   `src/impl/backend`.
5. `dune build` regenerates the OCaml bindings; the binding generator
   (`src/generator/imguiml_generator.ml`) may need to follow ImGui: the
   structs with bit fields, which are opaque, and the order in which
   structs are defined.

For 1.93.0, `IM_NODEBUGSTEP` in `imgui.h` had to be made overridable
while generating (wrap its definitions in `#ifdef IM_NODEBUGSTEP` /
`#elif`), and then put back: otherwise cimgui's generator misses the
constructors of `ImVec2` and `ImVec4`. ImGui does so itself after
1.93.0.
