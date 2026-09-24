defmodule AdyenEx.Management.V3.ThemeUpdateRequest do
  @moduledoc """
  Provides struct and type for a ThemeUpdateRequest
  """

  @type t :: %__MODULE__{mode: String.t() | nil, name: String.t() | nil}

  defstruct [:mode, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [mode: {:enum, ["dark", "light"]}, name: {:union, [:string, :null]}]
  end
end
