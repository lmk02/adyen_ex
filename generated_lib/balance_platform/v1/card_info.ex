defmodule AdyenEx.BalancePlatform.V1.CardInfo do
  @moduledoc """
  Provides struct and type for a CardInfo
  """

  @type t :: %__MODULE__{
          authentication: AdyenEx.BalancePlatform.V1.Authentication.t() | nil,
          brand: String.t(),
          brandVariant: String.t(),
          cardholderName: String.t(),
          configuration: AdyenEx.BalancePlatform.V1.CardConfiguration.t() | nil,
          deliveryContact: AdyenEx.BalancePlatform.V1.Contact.t() | nil,
          formFactor: String.t()
        }

  defstruct [
    :authentication,
    :brand,
    :brandVariant,
    :cardholderName,
    :configuration,
    :deliveryContact,
    :formFactor
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authentication: {AdyenEx.BalancePlatform.V1.Authentication, :t},
      brand: :string,
      brandVariant: :string,
      cardholderName: :string,
      configuration: {AdyenEx.BalancePlatform.V1.CardConfiguration, :t},
      deliveryContact: {AdyenEx.BalancePlatform.V1.Contact, :t},
      formFactor: {:enum, ["physical", "unknown", "virtual"]}
    ]
  end
end
