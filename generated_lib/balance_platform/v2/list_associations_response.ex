defmodule AdyenEx.BalancePlatform.V2.ListAssociationsResponse do
  @moduledoc """
  Provides struct and type for a ListAssociationsResponse
  """

  @type t :: %__MODULE__{
          _links: AdyenEx.BalancePlatform.V2.Link.t(),
          data: [AdyenEx.BalancePlatform.V2.AssociationListing.t()],
          itemsTotal: integer,
          pagesTotal: integer
        }

  defstruct [:_links, :data, :itemsTotal, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {AdyenEx.BalancePlatform.V2.Link, :t},
      data: [{AdyenEx.BalancePlatform.V2.AssociationListing, :t}],
      itemsTotal: {:integer, "int32"},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
