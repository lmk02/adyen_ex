defmodule AdyenEx.Checkout.V68.CardDetailsRequest do
  @moduledoc """
  Provides struct and type for a CardDetailsRequest
  """

  @type t :: %__MODULE__{
          cardNumber: String.t() | nil,
          countryCode: String.t() | nil,
          encryptedCardNumber: String.t() | nil,
          merchantAccount: String.t(),
          shopperReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          supportedBrands: [String.t()] | nil
        }

  defstruct [
    :cardNumber,
    :countryCode,
    :encryptedCardNumber,
    :merchantAccount,
    :shopperReference,
    :storedPaymentMethodId,
    :supportedBrands
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardNumber: :string,
      countryCode: :string,
      encryptedCardNumber: :string,
      merchantAccount: :string,
      shopperReference: :string,
      storedPaymentMethodId: :string,
      supportedBrands: [:string]
    ]
  end
end
