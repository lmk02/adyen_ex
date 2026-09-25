defmodule AdyenEx.Management.V1.UpdateThemeResponse do
  @moduledoc """
  Provides struct and type for a UpdateThemeResponse
  """

  @type t :: %__MODULE__{id: String.t(), mode: String.t(), name: String.t()}

  defstruct [:id, :mode, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, mode: {:enum, ["dark", "light"]}, name: :string]
  end
end
