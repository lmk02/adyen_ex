defmodule AdyenEx.Checkout.V37.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  @type t :: %__MODULE__{
          adyenLibrary: AdyenEx.Checkout.V37.CommonField.t() | nil,
          adyenPaymentSource: AdyenEx.Checkout.V37.CommonField.t() | nil,
          externalPlatform: AdyenEx.Checkout.V37.ExternalPlatform.t() | nil,
          merchantApplication: AdyenEx.Checkout.V37.CommonField.t() | nil,
          merchantDevice: AdyenEx.Checkout.V37.MerchantDevice.t() | nil,
          shopperInteractionDevice: AdyenEx.Checkout.V37.ShopperInteractionDevice.t() | nil
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
      adyenLibrary: {AdyenEx.Checkout.V37.CommonField, :t},
      adyenPaymentSource: {AdyenEx.Checkout.V37.CommonField, :t},
      externalPlatform: {AdyenEx.Checkout.V37.ExternalPlatform, :t},
      merchantApplication: {AdyenEx.Checkout.V37.CommonField, :t},
      merchantDevice: {AdyenEx.Checkout.V37.MerchantDevice, :t},
      shopperInteractionDevice: {AdyenEx.Checkout.V37.ShopperInteractionDevice, :t}
    ]
  end
end
