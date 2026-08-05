defmodule AdyenEx.Checkout.V70.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V70.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V70.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V70.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V70.ApplicationInfo.t() | nil,
          authenticationData: AdyenEx.Checkout.V70.AuthenticationData.t() | nil,
          bankAccount: AdyenEx.Checkout.V70.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V70.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V70.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V70.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V70.ForexQuote.t() | nil,
          deliverAt: DateTime.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V70.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          enhancedSchemeData: AdyenEx.Checkout.V70.EnhancedSchemeData.t() | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V70.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V70.FundRecipient.t() | nil,
          industryUsage: String.t() | nil,
          installments: AdyenEx.Checkout.V70.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V70.LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: AdyenEx.Checkout.V70.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V70.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V70.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V70.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V70.AchDetails.t()
            | AdyenEx.Checkout.V70.AffirmDetails.t()
            | AdyenEx.Checkout.V70.AfterpayDetails.t()
            | AdyenEx.Checkout.V70.AlmaDetails.t()
            | AdyenEx.Checkout.V70.AmazonPayDetails.t()
            | AdyenEx.Checkout.V70.AncvDetails.t()
            | AdyenEx.Checkout.V70.AndroidPayDetails.t()
            | AdyenEx.Checkout.V70.ApplePayDetails.t()
            | AdyenEx.Checkout.V70.AuPayDetails.t()
            | AdyenEx.Checkout.V70.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V70.BillDeskDetails.t()
            | AdyenEx.Checkout.V70.BlikDetails.t()
            | AdyenEx.Checkout.V70.CardDetails.t()
            | AdyenEx.Checkout.V70.CashAppDetails.t()
            | AdyenEx.Checkout.V70.CellulantDetails.t()
            | AdyenEx.Checkout.V70.DBaraiDetails.t()
            | AdyenEx.Checkout.V70.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V70.DokuDetails.t()
            | AdyenEx.Checkout.V70.DragonpayDetails.t()
            | AdyenEx.Checkout.V70.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V70.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V70.EftDetails.t()
            | AdyenEx.Checkout.V70.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V70.FastlaneDetails.t()
            | AdyenEx.Checkout.V70.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V70.GooglePayDetails.t()
            | AdyenEx.Checkout.V70.IdealDetails.t()
            | AdyenEx.Checkout.V70.KlarnaDetails.t()
            | AdyenEx.Checkout.V70.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V70.MasterpassDetails.t()
            | AdyenEx.Checkout.V70.MbwayDetails.t()
            | AdyenEx.Checkout.V70.MobilePayDetails.t()
            | AdyenEx.Checkout.V70.MolPayDetails.t()
            | AdyenEx.Checkout.V70.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V70.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V70.PayByBankDetails.t()
            | AdyenEx.Checkout.V70.PayPalDetails.t()
            | AdyenEx.Checkout.V70.PayPayDetails.t()
            | AdyenEx.Checkout.V70.PayToDetails.t()
            | AdyenEx.Checkout.V70.PayUUpiDetails.t()
            | AdyenEx.Checkout.V70.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V70.PaymentDetails.t()
            | AdyenEx.Checkout.V70.PixDetails.t()
            | AdyenEx.Checkout.V70.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V70.PseDetails.t()
            | AdyenEx.Checkout.V70.RakutenPayDetails.t()
            | AdyenEx.Checkout.V70.RatepayDetails.t()
            | AdyenEx.Checkout.V70.RivertyDetails.t()
            | AdyenEx.Checkout.V70.SamsungPayDetails.t()
            | AdyenEx.Checkout.V70.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V70.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V70.TwintDetails.t()
            | AdyenEx.Checkout.V70.UpiCollectDetails.t()
            | AdyenEx.Checkout.V70.UpiIntentDetails.t()
            | AdyenEx.Checkout.V70.UpiQrDetails.t()
            | AdyenEx.Checkout.V70.VippsDetails.t()
            | AdyenEx.Checkout.V70.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V70.WeChatPayDetails.t()
            | AdyenEx.Checkout.V70.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V70.ZipDetails.t(),
          paymentValidations: AdyenEx.Checkout.V70.PaymentValidations.t() | nil,
          platformChargebackLogic: AdyenEx.Checkout.V70.PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V70.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V70.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: AdyenEx.Checkout.V70.ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V70.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V70.SubMerchantInfo.t()] | nil,
          surcharge: AdyenEx.Checkout.V70.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          thirdPartyTokenRedundancyInfo:
            AdyenEx.Checkout.V70.ThirdPartyTokenRedundancyInfo.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V70.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {AdyenEx.Checkout.V70.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V70.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V70.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V70.ApplicationInfo, :t},
      authenticationData: {AdyenEx.Checkout.V70.AuthenticationData, :t},
      bankAccount: {AdyenEx.Checkout.V70.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V70.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V70.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V70.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V70.ForexQuote, :t},
      deliverAt: {:string, "date-time"},
      deliveryAddress: {AdyenEx.Checkout.V70.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      enhancedSchemeData: {AdyenEx.Checkout.V70.EnhancedSchemeData, :t},
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V70.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V70.FundRecipient, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      installments: {AdyenEx.Checkout.V70.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V70.LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {AdyenEx.Checkout.V70.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V70.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V70.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V70.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V70.AchDetails, :t},
           {AdyenEx.Checkout.V70.AffirmDetails, :t},
           {AdyenEx.Checkout.V70.AfterpayDetails, :t},
           {AdyenEx.Checkout.V70.AlmaDetails, :t},
           {AdyenEx.Checkout.V70.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V70.AncvDetails, :t},
           {AdyenEx.Checkout.V70.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V70.ApplePayDetails, :t},
           {AdyenEx.Checkout.V70.AuPayDetails, :t},
           {AdyenEx.Checkout.V70.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V70.BillDeskDetails, :t},
           {AdyenEx.Checkout.V70.BlikDetails, :t},
           {AdyenEx.Checkout.V70.CardDetails, :t},
           {AdyenEx.Checkout.V70.CashAppDetails, :t},
           {AdyenEx.Checkout.V70.CellulantDetails, :t},
           {AdyenEx.Checkout.V70.DBaraiDetails, :t},
           {AdyenEx.Checkout.V70.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V70.DokuDetails, :t},
           {AdyenEx.Checkout.V70.DragonpayDetails, :t},
           {AdyenEx.Checkout.V70.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V70.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V70.EftDetails, :t},
           {AdyenEx.Checkout.V70.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V70.FastlaneDetails, :t},
           {AdyenEx.Checkout.V70.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V70.GooglePayDetails, :t},
           {AdyenEx.Checkout.V70.IdealDetails, :t},
           {AdyenEx.Checkout.V70.KlarnaDetails, :t},
           {AdyenEx.Checkout.V70.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V70.MasterpassDetails, :t},
           {AdyenEx.Checkout.V70.MbwayDetails, :t},
           {AdyenEx.Checkout.V70.MobilePayDetails, :t},
           {AdyenEx.Checkout.V70.MolPayDetails, :t},
           {AdyenEx.Checkout.V70.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V70.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V70.PayByBankDetails, :t},
           {AdyenEx.Checkout.V70.PayPalDetails, :t},
           {AdyenEx.Checkout.V70.PayPayDetails, :t},
           {AdyenEx.Checkout.V70.PayToDetails, :t},
           {AdyenEx.Checkout.V70.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V70.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V70.PaymentDetails, :t},
           {AdyenEx.Checkout.V70.PixDetails, :t},
           {AdyenEx.Checkout.V70.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V70.PseDetails, :t},
           {AdyenEx.Checkout.V70.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V70.RatepayDetails, :t},
           {AdyenEx.Checkout.V70.RivertyDetails, :t},
           {AdyenEx.Checkout.V70.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V70.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V70.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V70.TwintDetails, :t},
           {AdyenEx.Checkout.V70.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V70.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V70.UpiQrDetails, :t},
           {AdyenEx.Checkout.V70.VippsDetails, :t},
           {AdyenEx.Checkout.V70.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V70.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V70.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V70.ZipDetails, :t}
         ]},
      paymentValidations: {AdyenEx.Checkout.V70.PaymentValidations, :t},
      platformChargebackLogic: {AdyenEx.Checkout.V70.PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V70.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V70.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {AdyenEx.Checkout.V70.ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V70.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V70.SubMerchantInfo, :t}],
      surcharge: {AdyenEx.Checkout.V70.Surcharge, :t},
      telephoneNumber: :string,
      thirdPartyTokenRedundancyInfo: {AdyenEx.Checkout.V70.ThirdPartyTokenRedundancyInfo, :t},
      threeDS2RequestData: {AdyenEx.Checkout.V70.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
