defmodule AdyenEx.Management.V1.ListDonationCampaignsResponse do
  @moduledoc """
  Provides struct and type for a ListDonationCampaignsResponse
  """

  @type t :: %__MODULE__{
          _links: AdyenEx.Management.V1.PaginationLinks.t() | nil,
          campaigns: [AdyenEx.Management.V1.DonationCampaign.t()] | nil,
          itemsTotal: integer,
          pagesTotal: integer
        }

  defstruct [:_links, :campaigns, :itemsTotal, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {AdyenEx.Management.V1.PaginationLinks, :t},
      campaigns: [{AdyenEx.Management.V1.DonationCampaign, :t}],
      itemsTotal: {:integer, "int32"},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
