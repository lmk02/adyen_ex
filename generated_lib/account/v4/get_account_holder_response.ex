defmodule AdyenEx.Account.V4.GetAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a GetAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: AdyenEx.Account.V4.AccountHolderDetails.t() | nil,
          accountHolderStatus: AdyenEx.Account.V4.AccountHolderStatus.t() | nil,
          accounts: [AdyenEx.Account.V4.AccountWrapper.t()] | nil,
          description: String.t() | nil,
          legalEntity: String.t() | nil,
          primaryCurrency: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          verification: AdyenEx.Account.V4.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :accounts,
    :description,
    :legalEntity,
    :primaryCurrency,
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
      accountHolderCode: :string,
      accountHolderDetails: {AdyenEx.Account.V4.AccountHolderDetails, :t},
      accountHolderStatus: {AdyenEx.Account.V4.AccountHolderStatus, :t},
      accounts: [{AdyenEx.Account.V4.AccountWrapper, :t}],
      description: :string,
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      primaryCurrency: :string,
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      verification: {AdyenEx.Account.V4.KYCVerificationResult, :t}
    ]
  end
end
