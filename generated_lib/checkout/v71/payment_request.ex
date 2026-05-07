defmodule AdyenEx.Checkout.V71.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V71.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V71.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V71.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V71.ApplicationInfo.t() | nil,
          authenticationData: AdyenEx.Checkout.V71.AuthenticationData.t() | nil,
          bankAccount: AdyenEx.Checkout.V71.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V71.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V71.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V71.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V71.ForexQuote.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V71.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          enhancedSchemeData: AdyenEx.Checkout.V71.EnhancedSchemeData.t() | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V71.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V71.FundRecipient.t() | nil,
          industryUsage: String.t() | nil,
          installments: AdyenEx.Checkout.V71.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V71.LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: AdyenEx.Checkout.V71.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V71.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V71.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V71.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V71.AchDetails.t()
            | AdyenEx.Checkout.V71.AffirmDetails.t()
            | AdyenEx.Checkout.V71.AfterpayDetails.t()
            | AdyenEx.Checkout.V71.AlmaDetails.t()
            | AdyenEx.Checkout.V71.AmazonPayDetails.t()
            | AdyenEx.Checkout.V71.AncvDetails.t()
            | AdyenEx.Checkout.V71.AndroidPayDetails.t()
            | AdyenEx.Checkout.V71.ApplePayDetails.t()
            | AdyenEx.Checkout.V71.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V71.BillDeskDetails.t()
            | AdyenEx.Checkout.V71.BlikDetails.t()
            | AdyenEx.Checkout.V71.CardDetails.t()
            | AdyenEx.Checkout.V71.CashAppDetails.t()
            | AdyenEx.Checkout.V71.CellulantDetails.t()
            | AdyenEx.Checkout.V71.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V71.DokuDetails.t()
            | AdyenEx.Checkout.V71.DragonpayDetails.t()
            | AdyenEx.Checkout.V71.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V71.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V71.EftDetails.t()
            | AdyenEx.Checkout.V71.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V71.FastlaneDetails.t()
            | AdyenEx.Checkout.V71.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V71.GooglePayDetails.t()
            | AdyenEx.Checkout.V71.IdealDetails.t()
            | AdyenEx.Checkout.V71.KlarnaDetails.t()
            | AdyenEx.Checkout.V71.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V71.MasterpassDetails.t()
            | AdyenEx.Checkout.V71.MbwayDetails.t()
            | AdyenEx.Checkout.V71.MobilePayDetails.t()
            | AdyenEx.Checkout.V71.MolPayDetails.t()
            | AdyenEx.Checkout.V71.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V71.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V71.PayByBankDetails.t()
            | AdyenEx.Checkout.V71.PayPalDetails.t()
            | AdyenEx.Checkout.V71.PayPayDetails.t()
            | AdyenEx.Checkout.V71.PayToDetails.t()
            | AdyenEx.Checkout.V71.PayUUpiDetails.t()
            | AdyenEx.Checkout.V71.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V71.PaymentDetails.t()
            | AdyenEx.Checkout.V71.PixDetails.t()
            | AdyenEx.Checkout.V71.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V71.PseDetails.t()
            | AdyenEx.Checkout.V71.RakutenPayDetails.t()
            | AdyenEx.Checkout.V71.RatepayDetails.t()
            | AdyenEx.Checkout.V71.RivertyDetails.t()
            | AdyenEx.Checkout.V71.SamsungPayDetails.t()
            | AdyenEx.Checkout.V71.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V71.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V71.TwintDetails.t()
            | AdyenEx.Checkout.V71.UpiCollectDetails.t()
            | AdyenEx.Checkout.V71.UpiIntentDetails.t()
            | AdyenEx.Checkout.V71.UpiQrDetails.t()
            | AdyenEx.Checkout.V71.VippsDetails.t()
            | AdyenEx.Checkout.V71.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V71.WeChatPayDetails.t()
            | AdyenEx.Checkout.V71.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V71.ZipDetails.t(),
          paymentValidations: AdyenEx.Checkout.V71.PaymentValidations.t() | nil,
          platformChargebackLogic: AdyenEx.Checkout.V71.PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V71.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V71.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: AdyenEx.Checkout.V71.ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V71.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V71.SubMerchantInfo.t()] | nil,
          surcharge: AdyenEx.Checkout.V71.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V71.ThreeDs2RequestFields.t() | nil,
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
    :deliverAt,
    :deliveryAddress,
    :deliveryDate,
    :deviceFingerprint,
    :enableOneClick,
    :enablePayOut,
    :enableRecurring,
    :enhancedSchemeData,
    :entityType,
    :fraudOffset,
    :fundOrigin,
    :fundRecipient,
    :industryUsage,
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
    :threeDS2RequestData,
    :threeDSAuthenticationOnly,
    :trustedShopper
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {AdyenEx.Checkout.V71.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V71.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V71.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V71.ApplicationInfo, :t},
      authenticationData: {AdyenEx.Checkout.V71.AuthenticationData, :t},
      bankAccount: {AdyenEx.Checkout.V71.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V71.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V71.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V71.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V71.ForexQuote, :t},
      deliverAt: {:string, "date-time"},
      deliveryAddress: {AdyenEx.Checkout.V71.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      enhancedSchemeData: {AdyenEx.Checkout.V71.EnhancedSchemeData, :t},
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V71.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V71.FundRecipient, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      installments: {AdyenEx.Checkout.V71.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V71.LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {AdyenEx.Checkout.V71.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V71.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V71.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V71.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V71.AchDetails, :t},
           {AdyenEx.Checkout.V71.AffirmDetails, :t},
           {AdyenEx.Checkout.V71.AfterpayDetails, :t},
           {AdyenEx.Checkout.V71.AlmaDetails, :t},
           {AdyenEx.Checkout.V71.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V71.AncvDetails, :t},
           {AdyenEx.Checkout.V71.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V71.ApplePayDetails, :t},
           {AdyenEx.Checkout.V71.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V71.BillDeskDetails, :t},
           {AdyenEx.Checkout.V71.BlikDetails, :t},
           {AdyenEx.Checkout.V71.CardDetails, :t},
           {AdyenEx.Checkout.V71.CashAppDetails, :t},
           {AdyenEx.Checkout.V71.CellulantDetails, :t},
           {AdyenEx.Checkout.V71.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V71.DokuDetails, :t},
           {AdyenEx.Checkout.V71.DragonpayDetails, :t},
           {AdyenEx.Checkout.V71.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V71.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V71.EftDetails, :t},
           {AdyenEx.Checkout.V71.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V71.FastlaneDetails, :t},
           {AdyenEx.Checkout.V71.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V71.GooglePayDetails, :t},
           {AdyenEx.Checkout.V71.IdealDetails, :t},
           {AdyenEx.Checkout.V71.KlarnaDetails, :t},
           {AdyenEx.Checkout.V71.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V71.MasterpassDetails, :t},
           {AdyenEx.Checkout.V71.MbwayDetails, :t},
           {AdyenEx.Checkout.V71.MobilePayDetails, :t},
           {AdyenEx.Checkout.V71.MolPayDetails, :t},
           {AdyenEx.Checkout.V71.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V71.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V71.PayByBankDetails, :t},
           {AdyenEx.Checkout.V71.PayPalDetails, :t},
           {AdyenEx.Checkout.V71.PayPayDetails, :t},
           {AdyenEx.Checkout.V71.PayToDetails, :t},
           {AdyenEx.Checkout.V71.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V71.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V71.PaymentDetails, :t},
           {AdyenEx.Checkout.V71.PixDetails, :t},
           {AdyenEx.Checkout.V71.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V71.PseDetails, :t},
           {AdyenEx.Checkout.V71.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V71.RatepayDetails, :t},
           {AdyenEx.Checkout.V71.RivertyDetails, :t},
           {AdyenEx.Checkout.V71.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V71.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V71.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V71.TwintDetails, :t},
           {AdyenEx.Checkout.V71.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V71.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V71.UpiQrDetails, :t},
           {AdyenEx.Checkout.V71.VippsDetails, :t},
           {AdyenEx.Checkout.V71.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V71.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V71.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V71.ZipDetails, :t}
         ]},
      paymentValidations: {AdyenEx.Checkout.V71.PaymentValidations, :t},
      platformChargebackLogic: {AdyenEx.Checkout.V71.PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V71.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V71.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {AdyenEx.Checkout.V71.ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V71.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V71.SubMerchantInfo, :t}],
      surcharge: {AdyenEx.Checkout.V71.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {AdyenEx.Checkout.V71.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
