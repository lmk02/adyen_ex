defmodule AdyenEx.Checkout.V64.PaymentRefundResponse do
  @moduledoc """
  Provides struct and type for a PaymentRefundResponse
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V64.Amount.t(),
          capturePspReference: String.t() | nil,
          lineItems: [AdyenEx.Checkout.V64.LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRefundReason: String.t() | nil,
          paymentPspReference: String.t(),
          pspReference: String.t(),
          reference: String.t() | nil,
          splits: [AdyenEx.Checkout.V64.Split.t()] | nil,
          status: String.t(),
          store: String.t() | nil
        }

  defstruct [
    :amount,
    :capturePspReference,
    :lineItems,
    :merchantAccount,
    :merchantRefundReason,
    :paymentPspReference,
    :pspReference,
    :reference,
    :splits,
    :status,
    :store
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V64.Amount, :t},
      capturePspReference: :string,
      lineItems: [{AdyenEx.Checkout.V64.LineItem, :t}],
      merchantAccount: :string,
      merchantRefundReason:
        {:enum, ["FRAUD", "CUSTOMER REQUEST", "RETURN", "DUPLICATE", "OTHER"]},
      paymentPspReference: :string,
      pspReference: :string,
      reference: :string,
      splits: [{AdyenEx.Checkout.V64.Split, :t}],
      status: {:const, "received"},
      store: :string
    ]
  end
end
