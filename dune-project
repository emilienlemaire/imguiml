(lang dune 3.15)

(name imguiml)

(generate_opam_files true)

(source
 (github emilienlemaire/imguiml))

(authors "Emilien Lemaire")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name imguiml)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune)
 (tags
  (topics "to describe" your project)))

(package
  (name cimgui_types))

(package
  (name cimgui_enums))

(package
  (name cimgui_enums_generated))

(package
  (name cimgui_base_structs))

(package
  (name cimgui_base_structs_generated))

(package
  (name cimgui_structs1))

(package
  (name cimgui_structs1_generated))

(package
  (name cimgui_structs2))

(package
  (name cimgui_structs2_generated))

(package
  (name cimgui_bindings))

(package
  (name cimgui_bindings_generated))

(package
  (name cimgui))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
