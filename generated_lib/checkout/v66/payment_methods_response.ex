defmodule AdyenEx.Checkout.V66.PaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a PaymentMethodsResponse
  """

  @type t :: %__MODULE__{
          paymentMethods: [AdyenEx.Checkout.V66.PaymentMethod.t()] | nil,
          storedPaymentMethods: [AdyenEx.Checkout.V66.StoredPaymentMethod.t()] | nil
        }

  defstruct [:paymentMethods, :storedPaymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      paymentMethods: [{AdyenEx.Checkout.V66.PaymentMethod, :t}],
      storedPaymentMethods: [{AdyenEx.Checkout.V66.StoredPaymentMethod, :t}]
    ]
  end
end
