# let's define some colors

let base00 = "#e1e1de" # Default Background
let base01 = "#f1f1df" # Lighter Background (Used for status bars, line number and folding marks)
let base02 = "#c4cbdc" # Selection Background
let base03 = "#618bb6" # Comments, Invisibles, Line Highlighting
let base04 = "#4c4c65" # Dark Foreground (Used for status bars)
let base05 = "#595b62" # Default Foreground, Caret, Delimiters, Operators
let base06 = "#858479" # Light Foreground (Not often used)
let base07 = "#e1e1de" # Light Background (Not often used)
let base08 = "#c75f6b" # Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
let base09 = "#b67e3d" # Integers, Boolean, Constants, XML Attributes, Markup Link Url
let base0a = "#a67337" # Classes, Markup Bold, Search Text Background
let base0b = "#618679" # Strings, Inherited Class, Markup Code, Diff Inserted
let base0c = "#86c1b9" # Support, Regular Expressions, Escape Characters, Markup Quotes
let base0d = "#86aed7" # Functions, Methods, Attribute IDs, Headings
let base0e = "#ba8baf" # Keywords, Storage, Selector, Markup Italic, Diff Changed
let base0f = "#919084" # Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

# we're creating a theme here that uses the colors we defined above.

let base16_theme = {
    separator: $base03
    leading_trailing_space_bg: $base04
    header: $base0b
    date: $base0e
    filesize: $base0d
    row_index: $base0c
    bool: $base08
    int: $base0b
    duration: $base08
    range: $base08
    float: $base08
    string: $base04
    nothing: $base08
    binary: $base08
    cellpath: $base08
    hints: dark_gray

    # shape_garbage: { fg: $base07 bg: $base08 attr: b} # base16 white on red
    # but i like the regular white on red for parse errors
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b}
    shape_bool: $base0d
    shape_int: { fg: $base0e attr: b}
    shape_float: { fg: $base0e attr: b}
    shape_range: { fg: $base0a attr: b}
    shape_internalcall: { fg: $base0c attr: b}
    shape_external: $base0c
    shape_externalarg: { fg: $base0b attr: b}
    shape_literal: $base0d
    shape_operator: $base0a
    shape_signature: { fg: $base0b attr: b}
    shape_string: $base0b
    shape_filepath: $base0d
    shape_globpattern: { fg: $base0d attr: b}
    shape_variable: $base0e
    shape_flag: { fg: $base0d attr: b}
    shape_custom: {attr: b}
}

# now let's apply our regular config settings but also apply the "color_config:" theme that we specified above.

let config = {
  filesize_metric: true
  table_mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
  use_ls_colors: true
  color_config: $base16_theme # <-- this is the theme
  use_grid_icons: true
  footer_mode: always #always, never, number_of_rows, auto
  animate_prompt: false
  float_precision: 2
  use_ansi_coloring: true
  filesize_format: "b" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, auto
  edit_mode: emacs # vi
  max_history_size: 10000
  log_level: error
}
