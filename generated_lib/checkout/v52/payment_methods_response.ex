defmodule AdyenEx.Checkout.V52.PaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a PaymentMethodsResponse
  """

  @type t :: %__MODULE__{
          groups: [AdyenEx.Checkout.V52.PaymentMethodsGroup.t()] | nil,
          oneClickPaymentMethods: [AdyenEx.Checkout.V52.RecurringDetail.t()] | nil,
          paymentMethods: [AdyenEx.Checkout.V52.PaymentMethod.t()] | nil,
          storedPaymentMethods: [AdyenEx.Checkout.V52.StoredPaymentMethod.t()] | nil
        }

  defstruct [:groups, :oneClickPaymentMethods, :paymentMethods, :storedPaymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      groups: [{AdyenEx.Checkout.V52.PaymentMethodsGroup, :t}],
      oneClickPaymentMethods: [{AdyenEx.Checkout.V52.RecurringDetail, :t}],
      paymentMethods: [{AdyenEx.Checkout.V52.PaymentMethod, :t}],
      storedPaymentMethods: [{AdyenEx.Checkout.V52.StoredPaymentMethod, :t}]
    ]
  end
end
