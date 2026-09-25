defmodule AdyenEx.Management.V3.ThemeAsset do
  @moduledoc """
  Provides struct and type for a ThemeAsset
  """

  @type t :: %__MODULE__{model: String.t(), type: String.t(), url: String.t()}

  defstruct [:model, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [model: :string, type: :string, url: :string]
  end
end
