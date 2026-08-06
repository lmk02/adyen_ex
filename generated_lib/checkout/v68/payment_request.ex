defmodule AdyenEx.Checkout.V68.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V68.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V68.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V68.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V68.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V68.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V68.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V68.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V68.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V68.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V68.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V68.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V68.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V68.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V68.LineItem.t()] | nil,
          localizedShopperStatement: map | nil,
          mandate: AdyenEx.Checkout.V68.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V68.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V68.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V68.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V68.AchDetails.t()
            | AdyenEx.Checkout.V68.AffirmDetails.t()
            | AdyenEx.Checkout.V68.AfterpayDetails.t()
            | AdyenEx.Checkout.V68.AlmaDetails.t()
            | AdyenEx.Checkout.V68.AmazonPayDetails.t()
            | AdyenEx.Checkout.V68.AncvDetails.t()
            | AdyenEx.Checkout.V68.AndroidPayDetails.t()
            | AdyenEx.Checkout.V68.ApplePayDetails.t()
            | AdyenEx.Checkout.V68.AuPayDetails.t()
            | AdyenEx.Checkout.V68.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V68.BillDeskDetails.t()
            | AdyenEx.Checkout.V68.BlikDetails.t()
            | AdyenEx.Checkout.V68.CardDetails.t()
            | AdyenEx.Checkout.V68.CashAppDetails.t()
            | AdyenEx.Checkout.V68.CellulantDetails.t()
            | AdyenEx.Checkout.V68.DBaraiDetails.t()
            | AdyenEx.Checkout.V68.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V68.DokuDetails.t()
            | AdyenEx.Checkout.V68.DragonpayDetails.t()
            | AdyenEx.Checkout.V68.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V68.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V68.EftDetails.t()
            | AdyenEx.Checkout.V68.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V68.FastlaneDetails.t()
            | AdyenEx.Checkout.V68.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V68.GooglePayDetails.t()
            | AdyenEx.Checkout.V68.IdealDetails.t()
            | AdyenEx.Checkout.V68.KlarnaDetails.t()
            | AdyenEx.Checkout.V68.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V68.MasterpassDetails.t()
            | AdyenEx.Checkout.V68.MbwayDetails.t()
            | AdyenEx.Checkout.V68.MobilePayDetails.t()
            | AdyenEx.Checkout.V68.MolPayDetails.t()
            | AdyenEx.Checkout.V68.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V68.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V68.PayByBankDetails.t()
            | AdyenEx.Checkout.V68.PayPalDetails.t()
            | AdyenEx.Checkout.V68.PayPayDetails.t()
            | AdyenEx.Checkout.V68.PayToDetails.t()
            | AdyenEx.Checkout.V68.PayUUpiDetails.t()
            | AdyenEx.Checkout.V68.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V68.PaymentDetails.t()
            | AdyenEx.Checkout.V68.PixDetails.t()
            | AdyenEx.Checkout.V68.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V68.PseDetails.t()
            | AdyenEx.Checkout.V68.RakutenPayDetails.t()
            | AdyenEx.Checkout.V68.RatepayDetails.t()
            | AdyenEx.Checkout.V68.RivertyDetails.t()
            | AdyenEx.Checkout.V68.SamsungPayDetails.t()
            | AdyenEx.Checkout.V68.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V68.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V68.TwintDetails.t()
            | AdyenEx.Checkout.V68.UpiCollectDetails.t()
            | AdyenEx.Checkout.V68.UpiIntentDetails.t()
            | AdyenEx.Checkout.V68.UpiQrDetails.t()
            | AdyenEx.Checkout.V68.VippsDetails.t()
            | AdyenEx.Checkout.V68.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V68.WeChatPayDetails.t()
            | AdyenEx.Checkout.V68.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V68.ZipDetails.t(),
          platformChargebackLogic: AdyenEx.Checkout.V68.PlatformChargebackLogic.t() | nil,
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V68.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V68.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          shopperTaxInfo: AdyenEx.Checkout.V68.ShopperTaxInfo.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V68.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V68.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V68.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          thirdPartyTokenRedundancyInfo:
            AdyenEx.Checkout.V68.ThirdPartyTokenRedundancyInfo.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V68.ThreeDs2RequestFields.t() | nil,
          threeDSAuthenticationOnly: boolean | nil,
          trustedShopper: boolean | nil
        }

  defstruct [
    :accountInfo,
    :additionalAmount,
    :additionalData,
    :amount,
    :applicationInfo,
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
      accountInfo: {AdyenEx.Checkout.V68.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V68.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V68.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V68.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V68.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V68.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V68.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V68.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V68.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V68.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V68.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V68.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V68.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V68.LineItem, :t}],
      localizedShopperStatement: :map,
      mandate: {AdyenEx.Checkout.V68.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V68.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V68.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V68.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V68.AchDetails, :t},
           {AdyenEx.Checkout.V68.AffirmDetails, :t},
           {AdyenEx.Checkout.V68.AfterpayDetails, :t},
           {AdyenEx.Checkout.V68.AlmaDetails, :t},
           {AdyenEx.Checkout.V68.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V68.AncvDetails, :t},
           {AdyenEx.Checkout.V68.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V68.ApplePayDetails, :t},
           {AdyenEx.Checkout.V68.AuPayDetails, :t},
           {AdyenEx.Checkout.V68.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V68.BillDeskDetails, :t},
           {AdyenEx.Checkout.V68.BlikDetails, :t},
           {AdyenEx.Checkout.V68.CardDetails, :t},
           {AdyenEx.Checkout.V68.CashAppDetails, :t},
           {AdyenEx.Checkout.V68.CellulantDetails, :t},
           {AdyenEx.Checkout.V68.DBaraiDetails, :t},
           {AdyenEx.Checkout.V68.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V68.DokuDetails, :t},
           {AdyenEx.Checkout.V68.DragonpayDetails, :t},
           {AdyenEx.Checkout.V68.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V68.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V68.EftDetails, :t},
           {AdyenEx.Checkout.V68.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V68.FastlaneDetails, :t},
           {AdyenEx.Checkout.V68.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V68.GooglePayDetails, :t},
           {AdyenEx.Checkout.V68.IdealDetails, :t},
           {AdyenEx.Checkout.V68.KlarnaDetails, :t},
           {AdyenEx.Checkout.V68.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V68.MasterpassDetails, :t},
           {AdyenEx.Checkout.V68.MbwayDetails, :t},
           {AdyenEx.Checkout.V68.MobilePayDetails, :t},
           {AdyenEx.Checkout.V68.MolPayDetails, :t},
           {AdyenEx.Checkout.V68.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V68.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V68.PayByBankDetails, :t},
           {AdyenEx.Checkout.V68.PayPalDetails, :t},
           {AdyenEx.Checkout.V68.PayPayDetails, :t},
           {AdyenEx.Checkout.V68.PayToDetails, :t},
           {AdyenEx.Checkout.V68.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V68.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V68.PaymentDetails, :t},
           {AdyenEx.Checkout.V68.PixDetails, :t},
           {AdyenEx.Checkout.V68.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V68.PseDetails, :t},
           {AdyenEx.Checkout.V68.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V68.RatepayDetails, :t},
           {AdyenEx.Checkout.V68.RivertyDetails, :t},
           {AdyenEx.Checkout.V68.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V68.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V68.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V68.TwintDetails, :t},
           {AdyenEx.Checkout.V68.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V68.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V68.UpiQrDetails, :t},
           {AdyenEx.Checkout.V68.VippsDetails, :t},
           {AdyenEx.Checkout.V68.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V68.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V68.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V68.ZipDetails, :t}
         ]},
      platformChargebackLogic: {AdyenEx.Checkout.V68.PlatformChargebackLogic, :t},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V68.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V68.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      shopperTaxInfo: {AdyenEx.Checkout.V68.ShopperTaxInfo, :t},
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V68.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V68.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V68.Surcharge, :t},
      telephoneNumber: :string,
      thirdPartyTokenRedundancyInfo: {AdyenEx.Checkout.V68.ThirdPartyTokenRedundancyInfo, :t},
      threeDS2RequestData: {AdyenEx.Checkout.V68.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
