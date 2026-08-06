defmodule AdyenEx.Management.V1.ListNonprofitsResponse do
  @moduledoc """
  Provides struct and type for a ListNonprofitsResponse
  """

  @type t :: %__MODULE__{
          _links: AdyenEx.Management.V1.PaginationLinks.t() | nil,
          itemsTotal: integer,
          nonprofits: [AdyenEx.Management.V1.Nonprofit.t()] | nil,
          pagesTotal: integer
        }

  defstruct [:_links, :itemsTotal, :nonprofits, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {AdyenEx.Management.V1.PaginationLinks, :t},
      itemsTotal: {:integer, "int32"},
      nonprofits: [{AdyenEx.Management.V1.Nonprofit, :t}],
      pagesTotal: {:integer, "int32"}
    ]
  end
end
