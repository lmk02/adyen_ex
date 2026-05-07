defmodule AdyenEx.Checkout.V66.PaypalUpdateOrderRequest do
  @moduledoc """
  Provides struct and type for a PaypalUpdateOrderRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V66.Amount.t() | nil,
          deliveryMethods: [AdyenEx.Checkout.V66.DeliveryMethod.t()] | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          sessionId: String.t() | nil,
          taxTotal: AdyenEx.Checkout.V66.TaxTotal.t() | nil
        }

  defstruct [:amount, :deliveryMethods, :paymentData, :pspReference, :sessionId, :taxTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V66.Amount, :t},
      deliveryMethods: [{AdyenEx.Checkout.V66.DeliveryMethod, :t}],
      paymentData: :string,
      pspReference: :string,
      sessionId: :string,
      taxTotal: {AdyenEx.Checkout.V66.TaxTotal, :t}
    ]
  end
end
