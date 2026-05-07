defmodule AdyenEx.Account.V4.UpdateAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a UpdateAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: AdyenEx.Account.V4.AccountHolderDetails.t() | nil,
          accountHolderStatus: AdyenEx.Account.V4.AccountHolderStatus.t() | nil,
          description: String.t() | nil,
          invalidFields: [AdyenEx.Account.V4.ErrorFieldTypeWrapper.t()] | nil,
          legalEntity: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          updatedFields: [AdyenEx.Account.V4.FieldTypeWrapper.t()] | nil,
          verification: AdyenEx.Account.V4.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :description,
    :invalidFields,
    :legalEntity,
    :pspReference,
    :resultCode,
    :submittedAsync,
    :updatedFields,
    :verification
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderDetails: {AdyenEx.Account.V4.AccountHolderDetails, :t},
      accountHolderStatus: {AdyenEx.Account.V4.AccountHolderStatus, :t},
      description: :string,
      invalidFields: [{AdyenEx.Account.V4.ErrorFieldTypeWrapper, :t}],
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      updatedFields: [{AdyenEx.Account.V4.FieldTypeWrapper, :t}],
      verification: {AdyenEx.Account.V4.KYCVerificationResult, :t}
    ]
  end
end
