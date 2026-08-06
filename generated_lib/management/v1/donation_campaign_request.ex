defmodule AdyenEx.Management.V1.DonationCampaignRequest do
  @moduledoc """
  Provides struct and type for a DonationCampaignRequest
  """

  @type t :: %__MODULE__{
          accountHolderIds: [String.t()] | nil,
          inPerson: AdyenEx.Management.V1.InPersonDonationSettings.t() | nil,
          name: String.t(),
          nonprofitCauseId: String.t(),
          online: AdyenEx.Management.V1.OnlineDonationSettings.t() | nil
        }

  defstruct [:accountHolderIds, :inPerson, :name, :nonprofitCauseId, :online]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderIds: [:string],
      inPerson: {AdyenEx.Management.V1.InPersonDonationSettings, :t},
      name: :string,
      nonprofitCauseId: :string,
      online: {AdyenEx.Management.V1.OnlineDonationSettings, :t}
    ]
  end
end
