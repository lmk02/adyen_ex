defmodule AdyenEx.Payment.V50.ApplicationInfo do
  @moduledoc """
  Provides struct and type for a ApplicationInfo
  """

  @type t :: %__MODULE__{
          adyenLibrary: AdyenEx.Payment.V50.CommonField.t() | nil,
          adyenPaymentSource: AdyenEx.Payment.V50.CommonField.t() | nil,
          externalPlatform: AdyenEx.Payment.V50.ExternalPlatform.t() | nil,
          merchantApplication: AdyenEx.Payment.V50.CommonField.t() | nil,
          merchantDevice: AdyenEx.Payment.V50.MerchantDevice.t() | nil,
          shopperInteractionDevice: AdyenEx.Payment.V50.ShopperInteractionDevice.t() | nil
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
      adyenLibrary: {AdyenEx.Payment.V50.CommonField, :t},
      adyenPaymentSource: {AdyenEx.Payment.V50.CommonField, :t},
      externalPlatform: {AdyenEx.Payment.V50.ExternalPlatform, :t},
      merchantApplication: {AdyenEx.Payment.V50.CommonField, :t},
      merchantDevice: {AdyenEx.Payment.V50.MerchantDevice, :t},
      shopperInteractionDevice: {AdyenEx.Payment.V50.ShopperInteractionDevice, :t}
    ]
  end
end
