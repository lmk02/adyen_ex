defmodule AdyenEx.Checkout.V67.PaymentLinkRequest do
  @moduledoc """
  Provides struct and type for a PaymentLinkRequest
  """

  @type t :: %__MODULE__{
          allowedPaymentMethods: [String.t()] | nil,
          amount: AdyenEx.Checkout.V67.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V67.ApplicationInfo.t() | nil,
          billingAddress: AdyenEx.Checkout.V67.Address.t() | nil,
          blockedPaymentMethods: [String.t()] | nil,
          countryCode: String.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V67.Address.t() | nil,
          description: String.t() | nil,
          expiresAt: String.t() | nil,
          fundOrigin: AdyenEx.Checkout.V67.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V67.FundRecipient.t() | nil,
          installmentOptions: map | nil,
          lineItems: [AdyenEx.Checkout.V67.LineItem.t()] | nil,
          manualCapture: boolean | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          metadata: map | nil,
          platformChargebackLogic: AdyenEx.Checkout.V67.PlatformChargebackLogic.t() | nil,
          recurringProcessingModel: String.t() | nil,
          reference: String.t(),
          requiredShopperFields: [String.t()] | nil,
          returnUrl: String.t() | nil,
          reusable: boolean | nil,
          riskData: AdyenEx.Checkout.V67.RiskData.t() | nil,
          shopperEmail: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V67.Name.t() | nil,
          shopperReference: String.t() | nil,
          showRemovePaymentMethodButton: boolean | nil,
          splits: [AdyenEx.Checkout.V67.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          themeId: String.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V67.CheckoutSessionThreeDs2RequestData.t() | nil
        }

  defstruct [
    :allowedPaymentMethods,
    :amount,
    :applicationInfo,
    :billingAddress,
    :blockedPaymentMethods,
    :countryCode,
    :deliverAt,
    :deliveryAddress,
    :description,
    :expiresAt,
    :fundOrigin,
    :fundRecipient,
    :installmentOptions,
    :lineItems,
    :manualCapture,
    :merchantAccount,
    :merchantOrderReference,
    :metadata,
    :platformChargebackLogic,
    :recurringProcessingModel,
    :reference,
    :requiredShopperFields,
    :returnUrl,
    :reusable,
    :riskData,
    :shopperEmail,
    :shopperLocale,
    :shopperName,
    :shopperReference,
    :showRemovePaymentMethodButton,
    :splits,
    :store,
    :storePaymentMethod,
    :themeId,
    :threeDS2RequestData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowedPaymentMethods: [:string],
      amount: {AdyenEx.Checkout.V67.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V67.ApplicationInfo, :t},
      billingAddress: {AdyenEx.Checkout.V67.Address, :t},
      blockedPaymentMethods: [:string],
      countryCode: :string,
      deliverAt: {:string, "date-time"},
      deliveryAddress: {AdyenEx.Checkout.V67.Address, :t},
      description: :string,
      expiresAt: :string,
      fundOrigin: {AdyenEx.Checkout.V67.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V67.FundRecipient, :t},
      installmentOptions: :map,
      lineItems: [{AdyenEx.Checkout.V67.LineItem, :t}],
      manualCapture: :boolean,
      merchantAccount: :string,
      merchantOrderReference: :string,
      metadata: :map,
      platformChargebackLogic: {AdyenEx.Checkout.V67.PlatformChargebackLogic, :t},
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      reference: :string,
      requiredShopperFields: [
        enum: [
          "billingAddress",
          "deliveryAddress",
          "shopperEmail",
          "shopperName",
          "telephoneNumber"
        ]
      ],
      returnUrl: :string,
      reusable: :boolean,
      riskData: {AdyenEx.Checkout.V67.RiskData, :t},
      shopperEmail: :string,
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V67.Name, :t},
      shopperReference: :string,
      showRemovePaymentMethodButton: :boolean,
      splits: [{AdyenEx.Checkout.V67.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      themeId: :string,
      threeDS2RequestData: {AdyenEx.Checkout.V67.CheckoutSessionThreeDs2RequestData, :t}
    ]
  end
end
