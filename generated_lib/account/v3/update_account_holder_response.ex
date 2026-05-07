defmodule AdyenEx.Account.V3.UpdateAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a UpdateAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: AdyenEx.Account.V3.AccountHolderDetails.t() | nil,
          accountHolderStatus: AdyenEx.Account.V3.AccountHolderStatus.t() | nil,
          invalidFields: [AdyenEx.Account.V3.ErrorFieldTypeWrapper.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          updatedFields: [AdyenEx.Account.V3.FieldTypeWrapper.t()] | nil,
          verification: AdyenEx.Account.V3.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :invalidFields,
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
      accountHolderDetails: {AdyenEx.Account.V3.AccountHolderDetails, :t},
      accountHolderStatus: {AdyenEx.Account.V3.AccountHolderStatus, :t},
      invalidFields: [{AdyenEx.Account.V3.ErrorFieldTypeWrapper, :t}],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      updatedFields: [{AdyenEx.Account.V3.FieldTypeWrapper, :t}],
      verification: {AdyenEx.Account.V3.KYCVerificationResult, :t}
    ]
  end
end
