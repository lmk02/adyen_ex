defmodule AdyenEx.LegalEntity.V3.BusinessLineInfo do
  @moduledoc """
  Provides struct and type for a BusinessLineInfo
  """

  @type t :: %__MODULE__{
          capability: String.t() | nil,
          industryCode: String.t(),
          industryCodeDescription: String.t() | nil,
          legalEntityId: String.t(),
          salesChannels: [String.t()] | nil,
          service: String.t(),
          sourceOfFunds: AdyenEx.LegalEntity.V3.SourceOfFunds.t() | nil,
          webData: [AdyenEx.LegalEntity.V3.WebData.t()] | nil,
          webDataExemption: AdyenEx.LegalEntity.V3.WebDataExemption.t() | nil
        }

  defstruct [
    :capability,
    :industryCode,
    :industryCodeDescription,
    :legalEntityId,
    :salesChannels,
    :service,
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
      service: {:enum, ["paymentProcessing", "banking"]},
      sourceOfFunds: {AdyenEx.LegalEntity.V3.SourceOfFunds, :t},
      webData: [{AdyenEx.LegalEntity.V3.WebData, :t}],
      webDataExemption: {AdyenEx.LegalEntity.V3.WebDataExemption, :t}
    ]
  end
end
