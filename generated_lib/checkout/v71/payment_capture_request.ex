defmodule AdyenEx.Checkout.V71.PaymentCaptureRequest do
  @moduledoc """
  Provides struct and type for a PaymentCaptureRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V71.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V71.ApplicationInfo.t() | nil,
          enhancedSchemeData: AdyenEx.Checkout.V71.EnhancedSchemeData.t() | nil,
          lineItems: [AdyenEx.Checkout.V71.LineItem.t()] | nil,
          merchantAccount: String.t(),
          platformChargebackLogic: AdyenEx.Checkout.V71.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          splits: [AdyenEx.Checkout.V71.Split.t()] | nil,
          subMerchants: [AdyenEx.Checkout.V71.SubMerchantInfo.t()] | nil
        }

  defstruct [
    :amount,
    :applicationInfo,
    :enhancedSchemeData,
    :lineItems,
    :merchantAccount,
    :platformChargebackLogic,
    :reference,
    :splits,
    :subMerchants
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V71.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V71.ApplicationInfo, :t},
      enhancedSchemeData: {AdyenEx.Checkout.V71.EnhancedSchemeData, :t},
      lineItems: [{AdyenEx.Checkout.V71.LineItem, :t}],
      merchantAccount: :string,
      platformChargebackLogic: {AdyenEx.Checkout.V71.PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{AdyenEx.Checkout.V71.Split, :t}],
      subMerchants: [{AdyenEx.Checkout.V71.SubMerchantInfo, :t}]
    ]
  end
end
