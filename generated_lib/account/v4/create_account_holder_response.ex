defmodule AdyenEx.Account.V4.CreateAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a CreateAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          accountHolderCode: String.t() | nil,
          accountHolderDetails: AdyenEx.Account.V4.AccountHolderDetails.t() | nil,
          accountHolderStatus: AdyenEx.Account.V4.AccountHolderStatus.t() | nil,
          description: String.t() | nil,
          invalidFields: [AdyenEx.Account.V4.ErrorFieldTypeWrapper.t()] | nil,
          legalEntity: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          verification: AdyenEx.Account.V4.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountCode,
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :description,
    :invalidFields,
    :legalEntity,
    :pspReference,
    :resultCode,
    :submittedAsync,
    :verification
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountCode: :string,
      accountHolderCode: :string,
      accountHolderDetails: {AdyenEx.Account.V4.AccountHolderDetails, :t},
      accountHolderStatus: {AdyenEx.Account.V4.AccountHolderStatus, :t},
      description: :string,
      invalidFields: [{AdyenEx.Account.V4.ErrorFieldTypeWrapper, :t}],
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      verification: {AdyenEx.Account.V4.KYCVerificationResult, :t}
    ]
  end
end
