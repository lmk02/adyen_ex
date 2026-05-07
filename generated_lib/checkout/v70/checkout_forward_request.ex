defmodule AdyenEx.Checkout.V70.CheckoutForwardRequest do
  @moduledoc """
  Provides struct and type for a CheckoutForwardRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V70.Amount.t() | nil,
          baseUrl: String.t(),
          merchantAccount: String.t(),
          merchantReference: String.t() | nil,
          options: AdyenEx.Checkout.V70.CheckoutForwardRequestOptions.t() | nil,
          paymentMethod: AdyenEx.Checkout.V70.CheckoutForwardRequestCard.t() | nil,
          request: AdyenEx.Checkout.V70.CheckoutOutgoingForwardRequest.t(),
          shopperReference: String.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [
    :amount,
    :baseUrl,
    :merchantAccount,
    :merchantReference,
    :options,
    :paymentMethod,
    :request,
    :shopperReference,
    :storedPaymentMethodId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V70.Amount, :t},
      baseUrl: :string,
      merchantAccount: :string,
      merchantReference: :string,
      options: {AdyenEx.Checkout.V70.CheckoutForwardRequestOptions, :t},
      paymentMethod: {AdyenEx.Checkout.V70.CheckoutForwardRequestCard, :t},
      request: {AdyenEx.Checkout.V70.CheckoutOutgoingForwardRequest, :t},
      shopperReference: :string,
      storedPaymentMethodId: :string
    ]
  end
end
