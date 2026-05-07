defmodule AdyenEx.LegalEntity.V1.BusinessLineInfo do
  @moduledoc """
  Provides struct and type for a BusinessLineInfo
  """

  @type t :: %__MODULE__{
          capability: String.t(),
          industryCode: String.t(),
          industryCodeDescription: String.t() | nil,
          legalEntityId: String.t(),
          salesChannels: [String.t()] | nil,
          sourceOfFunds: AdyenEx.LegalEntity.V1.SourceOfFunds.t() | nil,
          webData: [AdyenEx.LegalEntity.V1.WebData.t()] | nil,
          webDataExemption: AdyenEx.LegalEntity.V1.WebDataExemption.t() | nil
        }

  defstruct [
    :capability,
    :industryCode,
    :industryCodeDescription,
    :legalEntityId,
    :salesChannels,
    :sourceOfFunds,
    :webData,
    :webDataExemption
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capability: {:enum, ["receivePayments", "receiveFromPlatformPayments", "issueBankAccount"]},
      industryCode: :string,
      industryCodeDescription: :string,
      legalEntityId: :string,
      salesChannels: [:string],
      sourceOfFunds: {AdyenEx.LegalEntity.V1.SourceOfFunds, :t},
      webData: [{AdyenEx.LegalEntity.V1.WebData, :t}],
      webDataExemption: {AdyenEx.LegalEntity.V1.WebDataExemption, :t}
    ]
  end
end
