defmodule AdyenEx.Account.V6.UpdateAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a UpdateAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: AdyenEx.Account.V6.AccountHolderDetails.t() | nil,
          accountHolderStatus: AdyenEx.Account.V6.AccountHolderStatus.t() | nil,
          description: String.t() | nil,
          invalidFields: [AdyenEx.Account.V6.ErrorFieldType.t()] | nil,
          legalEntity: String.t() | nil,
          primaryCurrency: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          verification: AdyenEx.Account.V6.KYCVerificationResult.t() | nil,
          verificationProfile: String.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :description,
    :invalidFields,
    :legalEntity,
    :primaryCurrency,
    :pspReference,
    :resultCode,
    :verification,
    :verificationProfile
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderDetails: {AdyenEx.Account.V6.AccountHolderDetails, :t},
      accountHolderStatus: {AdyenEx.Account.V6.AccountHolderStatus, :t},
      description: :string,
      invalidFields: [{AdyenEx.Account.V6.ErrorFieldType, :t}],
      legalEntity:
        {:enum, ["Business", "Individual", "NonProfit", "Partnership", "PublicCompany"]},
      primaryCurrency: :string,
      pspReference: :string,
      resultCode: :string,
      verification: {AdyenEx.Account.V6.KYCVerificationResult, :t},
      verificationProfile: :string
    ]
  end
end
