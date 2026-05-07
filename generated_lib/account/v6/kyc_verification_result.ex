defmodule AdyenEx.Account.V6.KYCVerificationResult do
  @moduledoc """
  Provides struct and type for a KYCVerificationResult
  """

  @type t :: %__MODULE__{
          accountHolder: AdyenEx.Account.V6.KYCCheckResult.t() | nil,
          legalArrangements: [AdyenEx.Account.V6.KYCLegalArrangementCheckResult.t()] | nil,
          legalArrangementsEntities:
            [AdyenEx.Account.V6.KYCLegalArrangementEntityCheckResult.t()] | nil,
          payoutMethods: [AdyenEx.Account.V6.KYCPayoutMethodCheckResult.t()] | nil,
          shareholders: [AdyenEx.Account.V6.KYCShareholderCheckResult.t()] | nil,
          signatories: [AdyenEx.Account.V6.KYCSignatoryCheckResult.t()] | nil,
          ultimateParentCompany:
            [AdyenEx.Account.V6.KYCUltimateParentCompanyCheckResult.t()] | nil
        }

  defstruct [
    :accountHolder,
    :legalArrangements,
    :legalArrangementsEntities,
    :payoutMethods,
    :shareholders,
    :signatories,
    :ultimateParentCompany
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {AdyenEx.Account.V6.KYCCheckResult, :t},
      legalArrangements: [{AdyenEx.Account.V6.KYCLegalArrangementCheckResult, :t}],
      legalArrangementsEntities: [{AdyenEx.Account.V6.KYCLegalArrangementEntityCheckResult, :t}],
      payoutMethods: [{AdyenEx.Account.V6.KYCPayoutMethodCheckResult, :t}],
      shareholders: [{AdyenEx.Account.V6.KYCShareholderCheckResult, :t}],
      signatories: [{AdyenEx.Account.V6.KYCSignatoryCheckResult, :t}],
      ultimateParentCompany: [{AdyenEx.Account.V6.KYCUltimateParentCompanyCheckResult, :t}]
    ]
  end
end
