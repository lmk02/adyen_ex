defmodule AdyenEx.Checkout.V69.PaypalUpdateOrderRequest do
  @moduledoc """
  Provides struct and type for a PaypalUpdateOrderRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V69.Amount.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V69.DeliveryAddress.t() | nil,
          deliveryMethods: [AdyenEx.Checkout.V69.DeliveryMethod.t()] | nil,
          discountAmount: AdyenEx.Checkout.V69.Amount.t() | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          sessionId: String.t() | nil,
          shippingAmount: AdyenEx.Checkout.V69.Amount.t() | nil,
          taxTotal: AdyenEx.Checkout.V69.TaxTotal.t() | nil
        }

  defstruct [
    :amount,
    :deliveryAddress,
    :deliveryMethods,
    :discountAmount,
    :paymentData,
    :pspReference,
    :sessionId,
    :shippingAmount,
    :taxTotal
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V69.Amount, :t},
      deliveryAddress: {AdyenEx.Checkout.V69.DeliveryAddress, :t},
      deliveryMethods: [{AdyenEx.Checkout.V69.DeliveryMethod, :t}],
      discountAmount: {AdyenEx.Checkout.V69.Amount, :t},
      paymentData: :string,
      pspReference: :string,
      sessionId: :string,
      shippingAmount: {AdyenEx.Checkout.V69.Amount, :t},
      taxTotal: {AdyenEx.Checkout.V69.TaxTotal, :t}
    ]
  end
end
