defmodule AdyenEx.Account.V5.KYCVerificationResult do
  @moduledoc """
  Provides struct and type for a KYCVerificationResult
  """

  @type t :: %__MODULE__{
          accountHolder: AdyenEx.Account.V5.KYCCheckResult.t() | nil,
          bankAccounts: [AdyenEx.Account.V5.KYCBankAccountCheckResult.t()] | nil,
          cards: [AdyenEx.Account.V5.KYCCardCheckResult.t()] | nil,
          shareholders: [AdyenEx.Account.V5.KYCShareholderCheckResult.t()] | nil,
          signatories: [AdyenEx.Account.V5.KYCSignatoryCheckResult.t()] | nil
        }

  defstruct [:accountHolder, :bankAccounts, :cards, :shareholders, :signatories]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {AdyenEx.Account.V5.KYCCheckResult, :t},
      bankAccounts: [{AdyenEx.Account.V5.KYCBankAccountCheckResult, :t}],
      cards: [{AdyenEx.Account.V5.KYCCardCheckResult, :t}],
      shareholders: [{AdyenEx.Account.V5.KYCShareholderCheckResult, :t}],
      signatories: [{AdyenEx.Account.V5.KYCSignatoryCheckResult, :t}]
    ]
  end
end
