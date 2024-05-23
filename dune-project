(lang dune 3.15)
(name imguiml)

(generate_opam_files true)

(source
 (github emilienlemaire/imguiml))

(authors "Emilien Lemaire <emilien.lem@icloud.com>")

(maintainers "Emilien Lemaire <emilien.lem@icloud.com>")

(license MIT)

(documentation https://url/to/documentation)

(package
 (name imguiml)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml
          dune
          goblint-cil
          ctypes
          ctypes-foreign)
 (tags
  (graphics imgui ctypes bindings)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
