defmodule AdyenEx.Account.V5.GetAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a GetAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderDetails: AdyenEx.Account.V5.AccountHolderDetails.t() | nil,
          accountHolderStatus: AdyenEx.Account.V5.AccountHolderStatus.t() | nil,
          accounts: [AdyenEx.Account.V5.Account.t()] | nil,
          description: String.t() | nil,
          invalidFields: [AdyenEx.Account.V5.ErrorFieldType.t()] | nil,
          legalEntity: String.t() | nil,
          migrationData: AdyenEx.Account.V5.MigrationData.t() | nil,
          primaryCurrency: String.t() | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          systemUpToDateTime: DateTime.t() | nil,
          verification: AdyenEx.Account.V5.KYCVerificationResult.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :accountHolderDetails,
    :accountHolderStatus,
    :accounts,
    :description,
    :invalidFields,
    :legalEntity,
    :migrationData,
    :primaryCurrency,
    :pspReference,
    :resultCode,
    :systemUpToDateTime,
    :verification
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderDetails: {AdyenEx.Account.V5.AccountHolderDetails, :t},
      accountHolderStatus: {AdyenEx.Account.V5.AccountHolderStatus, :t},
      accounts: [{AdyenEx.Account.V5.Account, :t}],
      description: :string,
      invalidFields: [{AdyenEx.Account.V5.ErrorFieldType, :t}],
      legalEntity: {:enum, ["Business", "Individual", "NonProfit"]},
      migrationData: {AdyenEx.Account.V5.MigrationData, :t},
      primaryCurrency: :string,
      pspReference: :string,
      resultCode: :string,
      systemUpToDateTime: {:string, "date-time"},
      verification: {AdyenEx.Account.V5.KYCVerificationResult, :t}
    ]
  end
end
