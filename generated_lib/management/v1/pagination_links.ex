defmodule AdyenEx.Management.V1.PaginationLinks do
  @moduledoc """
  Provides struct and type for a PaginationLinks
  """

  @type t :: %__MODULE__{
          first: AdyenEx.Management.V1.LinksElement.t(),
          last: AdyenEx.Management.V1.LinksElement.t(),
          next: AdyenEx.Management.V1.LinksElement.t() | nil,
          prev: AdyenEx.Management.V1.LinksElement.t() | nil,
          self: AdyenEx.Management.V1.LinksElement.t()
        }

  defstruct [:first, :last, :next, :prev, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      first: {AdyenEx.Management.V1.LinksElement, :t},
      last: {AdyenEx.Management.V1.LinksElement, :t},
      next: {AdyenEx.Management.V1.LinksElement, :t},
      prev: {AdyenEx.Management.V1.LinksElement, :t},
      self: {AdyenEx.Management.V1.LinksElement, :t}
    ]
  end
end
