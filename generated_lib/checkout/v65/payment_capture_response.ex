defmodule AdyenEx.Checkout.V65.PaymentCaptureResponse do
  @moduledoc """
  Provides struct and type for a PaymentCaptureResponse
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V65.Amount.t(),
          lineItems: [AdyenEx.Checkout.V65.LineItem.t()] | nil,
          merchantAccount: String.t(),
          paymentPspReference: String.t(),
          pspReference: String.t(),
          reference: String.t() | nil,
          splits: [AdyenEx.Checkout.V65.Split.t()] | nil,
          status: String.t()
        }

  defstruct [
    :amount,
    :lineItems,
    :merchantAccount,
    :paymentPspReference,
    :pspReference,
    :reference,
    :splits,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V65.Amount, :t},
      lineItems: [{AdyenEx.Checkout.V65.LineItem, :t}],
      merchantAccount: :string,
      paymentPspReference: :string,
      pspReference: :string,
      reference: :string,
      splits: [{AdyenEx.Checkout.V65.Split, :t}],
      status: {:const, "received"}
    ]
  end
end
