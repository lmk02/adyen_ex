defmodule AdyenEx.Checkout.V67.PaypalUpdateOrderRequest do
  @moduledoc """
  Provides struct and type for a PaypalUpdateOrderRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V67.Amount.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V67.DeliveryAddress.t() | nil,
          deliveryMethods: [AdyenEx.Checkout.V67.DeliveryMethod.t()] | nil,
          discountAmount: AdyenEx.Checkout.V67.Amount.t() | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          sessionId: String.t() | nil,
          shippingAmount: AdyenEx.Checkout.V67.Amount.t() | nil,
          taxTotal: AdyenEx.Checkout.V67.TaxTotal.t() | nil
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
      amount: {AdyenEx.Checkout.V67.Amount, :t},
      deliveryAddress: {AdyenEx.Checkout.V67.DeliveryAddress, :t},
      deliveryMethods: [{AdyenEx.Checkout.V67.DeliveryMethod, :t}],
      discountAmount: {AdyenEx.Checkout.V67.Amount, :t},
      paymentData: :string,
      pspReference: :string,
      sessionId: :string,
      shippingAmount: {AdyenEx.Checkout.V67.Amount, :t},
      taxTotal: {AdyenEx.Checkout.V67.TaxTotal, :t}
    ]
  end
end
