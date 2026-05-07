defmodule AdyenEx.BalancePlatform.V2.TransferRoute do
  @moduledoc """
  Provides struct and type for a TransferRoute
  """

  @type t :: %__MODULE__{
          category: String.t() | nil,
          country: String.t() | nil,
          currency: String.t() | nil,
          priority: String.t() | nil,
          requirements:
            [
              AdyenEx.BalancePlatform.V2.AdditionalBankIdentificationRequirement.t()
              | AdyenEx.BalancePlatform.V2.AddressRequirement.t()
              | AdyenEx.BalancePlatform.V2.AmountMinMaxRequirement.t()
              | AdyenEx.BalancePlatform.V2.AmountNonZeroDecimalsRequirement.t()
              | AdyenEx.BalancePlatform.V2.BankAccountIdentificationTypeRequirement.t()
              | AdyenEx.BalancePlatform.V2.IbanAccountIdentificationRequirement.t()
              | AdyenEx.BalancePlatform.V2.PaymentInstrumentRequirement.t()
              | AdyenEx.BalancePlatform.V2.USInstantPayoutAddressRequirement.t()
              | AdyenEx.BalancePlatform.V2.USInternationalAchAddressRequirement.t()
              | AdyenEx.BalancePlatform.V2.USInternationalAchPriorityRequirement.t()
            ]
            | nil
        }

  defstruct [:category, :country, :currency, :priority, :requirements]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      category:
        {:enum,
         [
           "bank",
           "card",
           "grants",
           "interest",
           "internal",
           "issuedCard",
           "migration",
           "platformPayment",
           "topUp",
           "upgrade"
         ]},
      country: :string,
      currency: :string,
      priority: {:enum, ["crossBorder", "fast", "instant", "internal", "regular", "wire"]},
      requirements: [
        union: [
          {AdyenEx.BalancePlatform.V2.AdditionalBankIdentificationRequirement, :t},
          {AdyenEx.BalancePlatform.V2.AddressRequirement, :t},
          {AdyenEx.BalancePlatform.V2.AmountMinMaxRequirement, :t},
          {AdyenEx.BalancePlatform.V2.AmountNonZeroDecimalsRequirement, :t},
          {AdyenEx.BalancePlatform.V2.BankAccountIdentificationTypeRequirement, :t},
          {AdyenEx.BalancePlatform.V2.IbanAccountIdentificationRequirement, :t},
          {AdyenEx.BalancePlatform.V2.PaymentInstrumentRequirement, :t},
          {AdyenEx.BalancePlatform.V2.USInstantPayoutAddressRequirement, :t},
          {AdyenEx.BalancePlatform.V2.USInternationalAchAddressRequirement, :t},
          {AdyenEx.BalancePlatform.V2.USInternationalAchPriorityRequirement, :t}
        ]
      ]
    ]
  end
end
