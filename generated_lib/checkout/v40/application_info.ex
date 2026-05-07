defmodule AdyenEx.Checkout.V40.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  @type t :: %__MODULE__{
          adyenLibrary: AdyenEx.Checkout.V40.CommonField.t() | nil,
          adyenPaymentSource: AdyenEx.Checkout.V40.CommonField.t() | nil,
          externalPlatform: AdyenEx.Checkout.V40.ExternalPlatform.t() | nil,
          merchantApplication: AdyenEx.Checkout.V40.CommonField.t() | nil,
          merchantDevice: AdyenEx.Checkout.V40.MerchantDevice.t() | nil,
          shopperInteractionDevice: AdyenEx.Checkout.V40.ShopperInteractionDevice.t() | nil
        }

  defstruct [
    :adyenLibrary,
    :adyenPaymentSource,
    :externalPlatform,
    :merchantApplication,
    :merchantDevice,
    :shopperInteractionDevice
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      adyenLibrary: {AdyenEx.Checkout.V40.CommonField, :t},
      adyenPaymentSource: {AdyenEx.Checkout.V40.CommonField, :t},
      externalPlatform: {AdyenEx.Checkout.V40.ExternalPlatform, :t},
      merchantApplication: {AdyenEx.Checkout.V40.CommonField, :t},
      merchantDevice: {AdyenEx.Checkout.V40.MerchantDevice, :t},
      shopperInteractionDevice: {AdyenEx.Checkout.V40.ShopperInteractionDevice, :t}
    ]
  end
end
