(lang dune 3.15)
(name imguiml-ft)
(using directory-targets 0.1)
(generate_opam_files false)
(version v1.93.0)
(source
 (github let-def/imguiml))

(authors "Emilien Lemaire <emilien.lem@icloud.com>" "Frédéric Bour <frederic.bour@lakaban.net>")

(maintainers "Frédéric Bour <frederic.bour@lakaban.net>")

(license MIT)

(documentation https://let-def.github.io/imguiml)

(package
 (name imguiml-ft)
 (synopsis "ImGUI bindings to OCaml")
 (description "ImGUI bindings to OCaml")
 (depends ocaml
          dune
          goblint-cil
          ctypes
          ctypes-foreign
          (sherlodoc :with-doc))
 (tags
  (graphics imgui ctypes bindings)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
