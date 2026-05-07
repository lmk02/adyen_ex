defmodule AdyenEx.Account.V4.KYCVerificationResult do
  @moduledoc """
  Provides struct and type for a KYCVerificationResult
  """

  @type t :: %__MODULE__{
          accountHolder: AdyenEx.Account.V4.KYCCheckResult.t() | nil,
          bankAccounts: [AdyenEx.Account.V4.KYCBankAccountCheckResult.t()] | nil,
          shareholders: [AdyenEx.Account.V4.KYCShareholderCheckResult.t()] | nil,
          signatories: [AdyenEx.Account.V4.KYCSignatoryCheckResult.t()] | nil
        }

  defstruct [:accountHolder, :bankAccounts, :shareholders, :signatories]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {AdyenEx.Account.V4.KYCCheckResult, :t},
      bankAccounts: [{AdyenEx.Account.V4.KYCBankAccountCheckResult, :t}],
      shareholders: [{AdyenEx.Account.V4.KYCShareholderCheckResult, :t}],
      signatories: [{AdyenEx.Account.V4.KYCSignatoryCheckResult, :t}]
    ]
  end
end
