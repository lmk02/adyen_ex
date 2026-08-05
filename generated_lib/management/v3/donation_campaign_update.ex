defmodule AdyenEx.Management.V3.DonationCampaignUpdate do
  @moduledoc """
  Provides struct and type for a DonationCampaignUpdate
  """

  @type t :: %__MODULE__{
          accountHolderIds: [String.t()] | nil,
          inPerson: AdyenEx.Management.V3.InPersonDonationSettingsUpdate.t() | nil,
          name: String.t() | nil,
          online: AdyenEx.Management.V3.OnlineDonationSettingsUpdate.t() | nil
        }

  defstruct [:accountHolderIds, :inPerson, :name, :online]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderIds: {:union, [[:string], :null]},
      inPerson: {:union, [{AdyenEx.Management.V3.InPersonDonationSettingsUpdate, :t}, :null]},
      name: :string,
      online: {:union, [{AdyenEx.Management.V3.OnlineDonationSettingsUpdate, :t}, :null]}
    ]
  end
end
