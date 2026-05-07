defmodule AdyenExTest do
  use ExUnit.Case

  doctest AdyenEx

  test "version returns the library version" do
    assert AdyenEx.version() == "0.1.0"
  end
end
