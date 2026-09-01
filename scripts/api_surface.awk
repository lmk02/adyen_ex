# Emits one normalized line per public API element of the generated clients:
# struct fields (with types) and function heads. Feed it *.ex files; diff two
# runs to classify a regeneration as breaking, additive, or neither.
#
# Deliberately ignores defstruct and __fields__ bodies: they restate the @type
# block, and the formatter re-wraps them when a field is added, which would
# read as a removal.

/^defmodule / { mod = $2; intype = 0; buf = "" }

/@type t :: %__MODULE__\{/ { intype = 1; buf = ""; next }

intype && /^[ \t]*\}/ {
  if (buf != "") print mod " field " buf
  intype = 0; buf = ""; next
}

intype {
  gsub(/^[ \t]+|[ \t]+$/, "")
  buf = buf $0
  if (buf ~ /,$/) { print mod " field " buf; buf = "" }
  next
}

/^[ \t]+def [a-z_]/ {
  gsub(/^[ \t]+|[ \t]+$/, "")
  print mod " " $0
}
