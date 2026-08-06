defmodule AdyenEx.Checkout.V69.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V69.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V69.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V69.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V69.ApplicationInfo.t() | nil,
          authenticationData: AdyenEx.Checkout.V69.AuthenticationData.t() | nil,
          bankAccount: AdyenEx.Checkout.V69.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V69.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V69.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V69.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V69.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V69.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V69.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V69.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V69.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V69.LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: AdyenEx.Checkout.V69.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V69.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V69.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V69.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V69.AchDetails.t()
            | AdyenEx.Checkout.V69.AffirmDetails.t()
            | AdyenEx.Checkout.V69.AfterpayDetails.t()
            | AdyenEx.Checkout.V69.AlmaDetails.t()
            | AdyenEx.Checkout.V69.AmazonPayDetails.t()
            | AdyenEx.Checkout.V69.AncvDetails.t()
            | AdyenEx.Checkout.V69.AndroidPayDetails.t()
            | AdyenEx.Checkout.V69.ApplePayDetails.t()
            | AdyenEx.Checkout.V69.AuPayDetails.t()
            | AdyenEx.Checkout.V69.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V69.BillDeskDetails.t()
            | AdyenEx.Checkout.V69.BlikDetails.t()
            | AdyenEx.Checkout.V69.CardDetails.t()
            | AdyenEx.Checkout.V69.CashAppDetails.t()
            | AdyenEx.Checkout.V69.CellulantDetails.t()
            | AdyenEx.Checkout.V69.DBaraiDetails.t()
            | AdyenEx.Checkout.V69.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V69.DokuDetails.t()
            | AdyenEx.Checkout.V69.DragonpayDetails.t()
            | AdyenEx.Checkout.V69.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V69.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V69.EftDetails.t()
            | AdyenEx.Checkout.V69.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V69.FastlaneDetails.t()
            | AdyenEx.Checkout.V69.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V69.GooglePayDetails.t()
            | AdyenEx.Checkout.V69.IdealDetails.t()
            | AdyenEx.Checkout.V69.KlarnaDetails.t()
            | AdyenEx.Checkout.V69.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V69.MasterpassDetails.t()
            | AdyenEx.Checkout.V69.MbwayDetails.t()
            | AdyenEx.Checkout.V69.MobilePayDetails.t()
            | AdyenEx.Checkout.V69.MolPayDetails.t()
            | AdyenEx.Checkout.V69.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V69.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V69.PayByBankDetails.t()
            | AdyenEx.Checkout.V69.PayPalDetails.t()
            | AdyenEx.Checkout.V69.PayPayDetails.t()
            | AdyenEx.Checkout.V69.PayToDetails.t()
            | AdyenEx.Checkout.V69.PayUUpiDetails.t()
            | AdyenEx.Checkout.V69.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V69.PaymentDetails.t()
            | AdyenEx.Checkout.V69.PixDetails.t()
            | AdyenEx.Checkout.V69.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V69.PseDetails.t()
            | AdyenEx.Checkout.V69.RakutenPayDetails.t()
            | AdyenEx.Checkout.V69.RatepayDetails.t()
            | AdyenEx.Checkout.V69.RivertyDetails.t()
            | AdyenEx.Checkout.V69.SamsungPayDetails.t()
            | AdyenEx.Checkout.V69.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V69.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V69.TwintDetails.t()
            | AdyenEx.Checkout.V69.UpiCollectDetails.t()
            | AdyenEx.Checkout.V69.UpiIntentDetails.t()
            | AdyenEx.Checkout.V69.UpiQrDetails.t()
            | AdyenEx.Checkout.V69.VippsDetails.t()
            | AdyenEx.Checkout.V69.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V69.WeChatPayDetails.t()
            | AdyenEx.Checkout.V69.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V69.ZipDetails.t(),
          paymentValidations: AdyenEx.Checkout.V69.PaymentValidations.t() | nil,
          platformChargebackLogic: AdyenEx.Checkout.V69.PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V69.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V69.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: AdyenEx.Checkout.V69.ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V69.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V69.SubMerchantInfo.t()] | nil,
          surcharge: AdyenEx.Checkout.V69.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          thirdPartyTokenRedundancyInfo:
            AdyenEx.Checkout.V69.ThirdPartyTokenRedundancyInfo.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V69.ThreeDs2RequestFields.t() | nil,
          threeDSAuthenticationOnly: boolean | nil,
          trustedShopper: boolean | nil
        }

  defstruct [
    :accountInfo,
    :additionalAmount,
    :additionalData,
    :amount,
    :applicationInfo,
    :authenticationData,
    :bankAccount,
    :billingAddress,
    :browserInfo,
    :captureDelayHours,
    :channel,
    :checkoutAttemptId,
    :company,
    :conversionId,
    :countryCode,
    :dateOfBirth,
    :dccQuote,
    :deliveryAddress,
    :deliveryDate,
    :deviceFingerprint,
    :enableOneClick,
    :enablePayOut,
    :enableRecurring,
    :entityType,
    :fraudOffset,
    :fundOrigin,
    :fundRecipient,
    :installments,
    :lineItems,
    :localizedShopperStatement,
    :mandate,
    :mcc,
    :merchantAccount,
    :merchantOrderReference,
    :merchantRiskIndicator,
    :metadata,
    :mpiData,
    :order,
    :orderReference,
    :origin,
    :paymentMethod,
    :paymentValidations,
    :platformChargebackLogic,
    :recurringExpiry,
    :recurringFrequency,
    :recurringProcessingModel,
    :redirectFromIssuerMethod,
    :redirectToIssuerMethod,
    :reference,
    :returnUrl,
    :riskData,
    :sessionValidity,
    :shopperConversionId,
    :shopperEmail,
    :shopperIP,
    :shopperInteraction,
    :shopperLocale,
    :shopperName,
    :shopperReference,
    :shopperStatement,
    :shopperTaxInfo,
    :socialSecurityNumber,
    :splits,
    :store,
    :storePaymentMethod,
    :subMerchants,
    :surcharge,
    :telephoneNumber,
    :thirdPartyTokenRedundancyInfo,
    :threeDS2RequestData,
    :threeDSAuthenticationOnly,
    :trustedShopper
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {AdyenEx.Checkout.V69.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V69.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V69.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V69.ApplicationInfo, :t},
      authenticationData: {AdyenEx.Checkout.V69.AuthenticationData, :t},
      bankAccount: {AdyenEx.Checkout.V69.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V69.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V69.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V69.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V69.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V69.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V69.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V69.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V69.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V69.LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {AdyenEx.Checkout.V69.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V69.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V69.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V69.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V69.AchDetails, :t},
           {AdyenEx.Checkout.V69.AffirmDetails, :t},
           {AdyenEx.Checkout.V69.AfterpayDetails, :t},
           {AdyenEx.Checkout.V69.AlmaDetails, :t},
           {AdyenEx.Checkout.V69.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V69.AncvDetails, :t},
           {AdyenEx.Checkout.V69.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V69.ApplePayDetails, :t},
           {AdyenEx.Checkout.V69.AuPayDetails, :t},
           {AdyenEx.Checkout.V69.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V69.BillDeskDetails, :t},
           {AdyenEx.Checkout.V69.BlikDetails, :t},
           {AdyenEx.Checkout.V69.CardDetails, :t},
           {AdyenEx.Checkout.V69.CashAppDetails, :t},
           {AdyenEx.Checkout.V69.CellulantDetails, :t},
           {AdyenEx.Checkout.V69.DBaraiDetails, :t},
           {AdyenEx.Checkout.V69.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V69.DokuDetails, :t},
           {AdyenEx.Checkout.V69.DragonpayDetails, :t},
           {AdyenEx.Checkout.V69.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V69.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V69.EftDetails, :t},
           {AdyenEx.Checkout.V69.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V69.FastlaneDetails, :t},
           {AdyenEx.Checkout.V69.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V69.GooglePayDetails, :t},
           {AdyenEx.Checkout.V69.IdealDetails, :t},
           {AdyenEx.Checkout.V69.KlarnaDetails, :t},
           {AdyenEx.Checkout.V69.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V69.MasterpassDetails, :t},
           {AdyenEx.Checkout.V69.MbwayDetails, :t},
           {AdyenEx.Checkout.V69.MobilePayDetails, :t},
           {AdyenEx.Checkout.V69.MolPayDetails, :t},
           {AdyenEx.Checkout.V69.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V69.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V69.PayByBankDetails, :t},
           {AdyenEx.Checkout.V69.PayPalDetails, :t},
           {AdyenEx.Checkout.V69.PayPayDetails, :t},
           {AdyenEx.Checkout.V69.PayToDetails, :t},
           {AdyenEx.Checkout.V69.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V69.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V69.PaymentDetails, :t},
           {AdyenEx.Checkout.V69.PixDetails, :t},
           {AdyenEx.Checkout.V69.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V69.PseDetails, :t},
           {AdyenEx.Checkout.V69.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V69.RatepayDetails, :t},
           {AdyenEx.Checkout.V69.RivertyDetails, :t},
           {AdyenEx.Checkout.V69.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V69.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V69.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V69.TwintDetails, :t},
           {AdyenEx.Checkout.V69.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V69.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V69.UpiQrDetails, :t},
           {AdyenEx.Checkout.V69.VippsDetails, :t},
           {AdyenEx.Checkout.V69.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V69.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V69.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V69.ZipDetails, :t}
         ]},
      paymentValidations: {AdyenEx.Checkout.V69.PaymentValidations, :t},
      platformChargebackLogic: {AdyenEx.Checkout.V69.PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V69.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V69.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {AdyenEx.Checkout.V69.ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V69.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V69.SubMerchantInfo, :t}],
      surcharge: {AdyenEx.Checkout.V69.Surcharge, :t},
      telephoneNumber: :string,
      thirdPartyTokenRedundancyInfo: {AdyenEx.Checkout.V69.ThirdPartyTokenRedundancyInfo, :t},
      threeDS2RequestData: {AdyenEx.Checkout.V69.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
