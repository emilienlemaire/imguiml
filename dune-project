(lang dune 3.15)
(name imguiml)
(using directory-targets 0.1)
(generate_opam_files false)
(version v1.90.6)
(source
 (github emilienlemaire/imguiml))

(authors "Emilien Lemaire <emilien.lem@icloud.com>")

(maintainers "Emilien Lemaire <emilien.lem@icloud.com>")

(license MIT)

(documentation https://emilienlemaire.github.io/imguiml)

(package
 (name imguiml)
 (synopsis "ImGUI bindings to OCaml")
 (description "ImGUI bindings to OCaml")
 (depends ocaml
          dune
          goblint-cil
          ctypes
          ctypes-foreign
          (ppx_expect :with-test)
          (sherlodoc :with-doc))
 (tags
  (graphics imgui ctypes bindings)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
