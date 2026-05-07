defmodule AdyenEx.Checkout.V72.PaymentMethodsResponse do
  @moduledoc """
  Provides struct and type for a PaymentMethodsResponse
  """

  @type t :: %__MODULE__{
          paymentMethods: [AdyenEx.Checkout.V72.PaymentMethod.t()] | nil,
          storedPaymentMethods: [AdyenEx.Checkout.V72.StoredPaymentMethod.t()] | nil
        }

  defstruct [:paymentMethods, :storedPaymentMethods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      paymentMethods: [{AdyenEx.Checkout.V72.PaymentMethod, :t}],
      storedPaymentMethods: [{AdyenEx.Checkout.V72.StoredPaymentMethod, :t}]
    ]
  end
end
