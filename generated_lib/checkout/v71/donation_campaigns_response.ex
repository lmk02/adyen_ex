defmodule AdyenEx.Checkout.V71.DonationCampaignsResponse do
  @moduledoc """
  Provides struct and type for a DonationCampaignsResponse
  """

  @type t :: %__MODULE__{donationCampaigns: [AdyenEx.Checkout.V71.DonationCampaign.t()] | nil}

  defstruct [:donationCampaigns]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [donationCampaigns: [{AdyenEx.Checkout.V71.DonationCampaign, :t}]]
  end
end
