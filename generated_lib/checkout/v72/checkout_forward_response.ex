defmodule AdyenEx.Checkout.V72.CheckoutForwardResponse do
  @moduledoc """
  Provides struct and type for a CheckoutForwardResponse
  """

  @type t :: %__MODULE__{
          accountUpdate: AdyenEx.Checkout.V72.CheckoutForwardAccountUpdateResult.t() | nil,
          merchantReference: String.t() | nil,
          networkToken: AdyenEx.Checkout.V72.CheckoutForwardNetworkTokenResult.t() | nil,
          pspReference: String.t() | nil,
          response: AdyenEx.Checkout.V72.CheckoutForwardResponseFromUrl.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [
    :accountUpdate,
    :merchantReference,
    :networkToken,
    :pspReference,
    :response,
    :storedPaymentMethodId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountUpdate: {AdyenEx.Checkout.V72.CheckoutForwardAccountUpdateResult, :t},
      merchantReference: :string,
      networkToken: {AdyenEx.Checkout.V72.CheckoutForwardNetworkTokenResult, :t},
      pspReference: :string,
      response: {AdyenEx.Checkout.V72.CheckoutForwardResponseFromUrl, :t},
      storedPaymentMethodId: :string
    ]
  end
end
