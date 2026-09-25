defmodule AdyenEx.Management.V1.CreateThemeRequest do
  @moduledoc """
  Provides struct and type for a CreateThemeRequest
  """

  @type t :: %__MODULE__{mode: String.t(), name: String.t()}

  defstruct [:mode, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [mode: {:enum, ["dark", "light"]}, name: :string]
  end
end
