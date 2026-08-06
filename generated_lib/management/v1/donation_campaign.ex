defmodule AdyenEx.Management.V1.DonationCampaign do
  @moduledoc """
  Provides struct and type for a DonationCampaign
  """

  @type t :: %__MODULE__{
          accountHolderIds: [String.t()] | nil,
          activatedAt: DateTime.t() | nil,
          endedAt: DateTime.t() | nil,
          id: String.t(),
          inPerson: AdyenEx.Management.V1.InPersonDonationSettingsResponse.t() | nil,
          name: String.t(),
          nonprofitCause: AdyenEx.Management.V1.DonationCampaignNonprofitCause.t(),
          online: AdyenEx.Management.V1.OnlineDonationSettingsResponse.t() | nil,
          status: String.t()
        }

  defstruct [
    :accountHolderIds,
    :activatedAt,
    :endedAt,
    :id,
    :inPerson,
    :name,
    :nonprofitCause,
    :online,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderIds: [:string],
      activatedAt: {:string, "date-time"},
      endedAt: {:string, "date-time"},
      id: :string,
      inPerson: {AdyenEx.Management.V1.InPersonDonationSettingsResponse, :t},
      name: :string,
      nonprofitCause: {AdyenEx.Management.V1.DonationCampaignNonprofitCause, :t},
      online: {AdyenEx.Management.V1.OnlineDonationSettingsResponse, :t},
      status: {:enum, ["active", "inactive", "ended"]}
    ]
  end
end
