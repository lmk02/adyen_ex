# Emits one normalized line per public API element of the generated clients:
# struct fields (with types) and function heads. Feed it *.ex files; diff two
# runs to classify a regeneration as breaking, additive, or neither.
#
# Deliberately ignores defstruct and __fields__ bodies: they restate the @type
# block, and the formatter re-wraps them when a field is added, which would
# read as a removal. Field splitting tracks bracket depth so that neither a
# single-line struct type nor a field type wrapped across lines is misparsed.

function out(f) {
  gsub(/[ \t]+/, " ", f)
  gsub(/^ +| +$/, "", f)
  if (f != "") print mod " field " f
}

# split the struct interior on commas at bracket depth 0
function emit_fields(s,   i, c, d, cur) {
  d = 0; cur = ""
  for (i = 1; i <= length(s); i++) {
    c = substr(s, i, 1)
    if (c == "{" || c == "[" || c == "(") d++
    else if (c == "}" || c == "]" || c == ")") d--
    if (c == "," && d == 0) { out(cur); cur = "" }
    else cur = cur c
  }
  out(cur)
}

# feed a line into the open struct type, closing it when braces balance
function consume(s,   i, c) {
  for (i = 1; i <= length(s); i++) {
    c = substr(s, i, 1)
    if (c == "{" || c == "[" || c == "(") depth++
    else if (c == "}" || c == "]" || c == ")") {
      if (--depth == 0) { emit_fields(buf); buf = ""; intype = 0; return }
    }
    buf = buf c
  }
  buf = buf " "
}

/^defmodule / { mod = $2; intype = 0; buf = ""; depth = 0 }

/@type t :: %__MODULE__\{/ {
  s = $0
  sub(/.*%__MODULE__\{/, "", s)
  buf = ""; depth = 1; intype = 1
  consume(s)
  next
}

intype { consume($0); next }

/^[ \t]+def [a-z_]/ {
  s = $0
  gsub(/^[ \t]+|[ \t]+$/, "", s)
  print mod " " s
}
