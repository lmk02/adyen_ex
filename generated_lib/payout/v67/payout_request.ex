defmodule AdyenEx.Payout.V67.PayoutRequest do
  @moduledoc """
  Provides struct and type for a PayoutRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Payout.V67.Amount.t(),
          billingAddress: AdyenEx.Payout.V67.Address.t() | nil,
          card: AdyenEx.Payout.V67.Card.t() | nil,
          fraudOffset: integer | nil,
          fundSource: AdyenEx.Payout.V67.FundSource.t() | nil,
          merchantAccount: String.t(),
          recurring: AdyenEx.Payout.V67.Recurring.t() | nil,
          reference: String.t(),
          selectedRecurringDetailReference: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperName: AdyenEx.Payout.V67.Name.t() | nil,
          shopperReference: String.t() | nil,
          telephoneNumber: String.t() | nil
        }

  defstruct [
    :amount,
    :billingAddress,
    :card,
    :fraudOffset,
    :fundSource,
    :merchantAccount,
    :recurring,
    :reference,
    :selectedRecurringDetailReference,
    :shopperEmail,
    :shopperInteraction,
    :shopperName,
    :shopperReference,
    :telephoneNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Payout.V67.Amount, :t},
      billingAddress: {AdyenEx.Payout.V67.Address, :t},
      card: {AdyenEx.Payout.V67.Card, :t},
      fraudOffset: {:integer, "int32"},
      fundSource: {AdyenEx.Payout.V67.FundSource, :t},
      merchantAccount: :string,
      recurring: {AdyenEx.Payout.V67.Recurring, :t},
      reference: :string,
      selectedRecurringDetailReference: :string,
      shopperEmail: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperName: {AdyenEx.Payout.V67.Name, :t},
      shopperReference: :string,
      telephoneNumber: :string
    ]
  end
end
