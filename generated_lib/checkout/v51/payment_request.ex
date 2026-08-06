defmodule AdyenEx.Checkout.V51.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V51.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V51.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V51.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V51.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V51.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V51.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V51.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V51.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V51.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V51.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRealTimeUpdate: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V51.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V51.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V51.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V51.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V51.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V51.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V51.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V51.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V51.AchDetails.t()
            | AdyenEx.Checkout.V51.AffirmDetails.t()
            | AdyenEx.Checkout.V51.AfterpayDetails.t()
            | AdyenEx.Checkout.V51.AlmaDetails.t()
            | AdyenEx.Checkout.V51.AmazonPayDetails.t()
            | AdyenEx.Checkout.V51.AncvDetails.t()
            | AdyenEx.Checkout.V51.AndroidPayDetails.t()
            | AdyenEx.Checkout.V51.ApplePayDetails.t()
            | AdyenEx.Checkout.V51.AuPayDetails.t()
            | AdyenEx.Checkout.V51.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V51.BillDeskDetails.t()
            | AdyenEx.Checkout.V51.BlikDetails.t()
            | AdyenEx.Checkout.V51.CardDetails.t()
            | AdyenEx.Checkout.V51.CashAppDetails.t()
            | AdyenEx.Checkout.V51.CellulantDetails.t()
            | AdyenEx.Checkout.V51.DBaraiDetails.t()
            | AdyenEx.Checkout.V51.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V51.DokuDetails.t()
            | AdyenEx.Checkout.V51.DragonpayDetails.t()
            | AdyenEx.Checkout.V51.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V51.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V51.EftDetails.t()
            | AdyenEx.Checkout.V51.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V51.FastlaneDetails.t()
            | AdyenEx.Checkout.V51.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V51.GooglePayDetails.t()
            | AdyenEx.Checkout.V51.IdealDetails.t()
            | AdyenEx.Checkout.V51.KlarnaDetails.t()
            | AdyenEx.Checkout.V51.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V51.MasterpassDetails.t()
            | AdyenEx.Checkout.V51.MbwayDetails.t()
            | AdyenEx.Checkout.V51.MobilePayDetails.t()
            | AdyenEx.Checkout.V51.MolPayDetails.t()
            | AdyenEx.Checkout.V51.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V51.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V51.PayByBankDetails.t()
            | AdyenEx.Checkout.V51.PayPalDetails.t()
            | AdyenEx.Checkout.V51.PayPayDetails.t()
            | AdyenEx.Checkout.V51.PayToDetails.t()
            | AdyenEx.Checkout.V51.PayUUpiDetails.t()
            | AdyenEx.Checkout.V51.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V51.PaymentDetails.t()
            | AdyenEx.Checkout.V51.PixDetails.t()
            | AdyenEx.Checkout.V51.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V51.PseDetails.t()
            | AdyenEx.Checkout.V51.RakutenPayDetails.t()
            | AdyenEx.Checkout.V51.RatepayDetails.t()
            | AdyenEx.Checkout.V51.RivertyDetails.t()
            | AdyenEx.Checkout.V51.SamsungPayDetails.t()
            | AdyenEx.Checkout.V51.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V51.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V51.TwintDetails.t()
            | AdyenEx.Checkout.V51.UpiCollectDetails.t()
            | AdyenEx.Checkout.V51.UpiIntentDetails.t()
            | AdyenEx.Checkout.V51.UpiQrDetails.t()
            | AdyenEx.Checkout.V51.VippsDetails.t()
            | AdyenEx.Checkout.V51.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V51.WeChatPayDetails.t()
            | AdyenEx.Checkout.V51.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V51.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V51.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V51.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V51.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V51.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V51.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          thirdPartyTokenRedundancyInfo:
            AdyenEx.Checkout.V51.ThirdPartyTokenRedundancyInfo.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V51.ThreeDs2RequestFields.t() | nil,
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
    :enableRealTimeUpdate,
    :enableRecurring,
    :entityType,
    :fraudOffset,
    :fundOrigin,
    :fundRecipient,
    :installments,
    :lineItems,
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
      accountInfo: {AdyenEx.Checkout.V51.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V51.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V51.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V51.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V51.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V51.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V51.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V51.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V51.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V51.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRealTimeUpdate: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V51.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V51.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V51.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V51.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V51.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V51.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V51.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V51.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V51.AchDetails, :t},
           {AdyenEx.Checkout.V51.AffirmDetails, :t},
           {AdyenEx.Checkout.V51.AfterpayDetails, :t},
           {AdyenEx.Checkout.V51.AlmaDetails, :t},
           {AdyenEx.Checkout.V51.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V51.AncvDetails, :t},
           {AdyenEx.Checkout.V51.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V51.ApplePayDetails, :t},
           {AdyenEx.Checkout.V51.AuPayDetails, :t},
           {AdyenEx.Checkout.V51.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V51.BillDeskDetails, :t},
           {AdyenEx.Checkout.V51.BlikDetails, :t},
           {AdyenEx.Checkout.V51.CardDetails, :t},
           {AdyenEx.Checkout.V51.CashAppDetails, :t},
           {AdyenEx.Checkout.V51.CellulantDetails, :t},
           {AdyenEx.Checkout.V51.DBaraiDetails, :t},
           {AdyenEx.Checkout.V51.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V51.DokuDetails, :t},
           {AdyenEx.Checkout.V51.DragonpayDetails, :t},
           {AdyenEx.Checkout.V51.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V51.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V51.EftDetails, :t},
           {AdyenEx.Checkout.V51.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V51.FastlaneDetails, :t},
           {AdyenEx.Checkout.V51.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V51.GooglePayDetails, :t},
           {AdyenEx.Checkout.V51.IdealDetails, :t},
           {AdyenEx.Checkout.V51.KlarnaDetails, :t},
           {AdyenEx.Checkout.V51.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V51.MasterpassDetails, :t},
           {AdyenEx.Checkout.V51.MbwayDetails, :t},
           {AdyenEx.Checkout.V51.MobilePayDetails, :t},
           {AdyenEx.Checkout.V51.MolPayDetails, :t},
           {AdyenEx.Checkout.V51.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V51.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V51.PayByBankDetails, :t},
           {AdyenEx.Checkout.V51.PayPalDetails, :t},
           {AdyenEx.Checkout.V51.PayPayDetails, :t},
           {AdyenEx.Checkout.V51.PayToDetails, :t},
           {AdyenEx.Checkout.V51.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V51.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V51.PaymentDetails, :t},
           {AdyenEx.Checkout.V51.PixDetails, :t},
           {AdyenEx.Checkout.V51.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V51.PseDetails, :t},
           {AdyenEx.Checkout.V51.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V51.RatepayDetails, :t},
           {AdyenEx.Checkout.V51.RivertyDetails, :t},
           {AdyenEx.Checkout.V51.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V51.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V51.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V51.TwintDetails, :t},
           {AdyenEx.Checkout.V51.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V51.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V51.UpiQrDetails, :t},
           {AdyenEx.Checkout.V51.VippsDetails, :t},
           {AdyenEx.Checkout.V51.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V51.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V51.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V51.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V51.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V51.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V51.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V51.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V51.Surcharge, :t},
      telephoneNumber: :string,
      thirdPartyTokenRedundancyInfo: {AdyenEx.Checkout.V51.ThirdPartyTokenRedundancyInfo, :t},
      threeDS2RequestData: {AdyenEx.Checkout.V51.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
