defmodule AdyenEx.Management.V3.Links do
  @moduledoc """
  Provides struct and type for a Links
  """

  @type t :: %__MODULE__{self: AdyenEx.Management.V3.LinksElement.t()}

  defstruct [:self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [self: {AdyenEx.Management.V3.LinksElement, :t}]
  end
end
