defmodule AdyenEx.Recurring.V68.RecurringDetail do
  @moduledoc """
  Provides struct and type for a RecurringDetail
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          alias: String.t() | nil,
          aliasType: String.t() | nil,
          bank: AdyenEx.Recurring.V68.BankAccount.t() | nil,
          billingAddress: AdyenEx.Recurring.V68.Address.t() | nil,
          card: AdyenEx.Recurring.V68.Card.t() | nil,
          contractTypes: [String.t()] | nil,
          creationDate: DateTime.t() | nil,
          firstPspReference: String.t() | nil,
          name: String.t() | nil,
          networkTxReference: String.t() | nil,
          paymentMethodVariant: String.t() | nil,
          recurringDetailReference: String.t(),
          shopperName: AdyenEx.Recurring.V68.Name.t() | nil,
          socialSecurityNumber: String.t() | nil,
          tokenDetails: AdyenEx.Recurring.V68.TokenDetails.t() | nil,
          transactionLinkId: String.t() | nil,
          variant: String.t()
        }

  defstruct [
    :additionalData,
    :alias,
    :aliasType,
    :bank,
    :billingAddress,
    :card,
    :contractTypes,
    :creationDate,
    :firstPspReference,
    :name,
    :networkTxReference,
    :paymentMethodVariant,
    :recurringDetailReference,
    :shopperName,
    :socialSecurityNumber,
    :tokenDetails,
    :transactionLinkId,
    :variant
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      alias: :string,
      aliasType: :string,
      bank: {AdyenEx.Recurring.V68.BankAccount, :t},
      billingAddress: {AdyenEx.Recurring.V68.Address, :t},
      card: {AdyenEx.Recurring.V68.Card, :t},
      contractTypes: [:string],
      creationDate: {:string, "date-time"},
      firstPspReference: :string,
      name: :string,
      networkTxReference: :string,
      paymentMethodVariant: :string,
      recurringDetailReference: :string,
      shopperName: {AdyenEx.Recurring.V68.Name, :t},
      socialSecurityNumber: :string,
      tokenDetails: {AdyenEx.Recurring.V68.TokenDetails, :t},
      transactionLinkId: :string,
      variant: :string
    ]
  end
end
