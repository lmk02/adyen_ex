defmodule AdyenEx.Checkout.V66.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V66.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V66.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V66.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V66.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V66.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V66.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V66.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V66.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V66.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V66.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V66.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V66.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V66.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V66.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V66.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V66.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V66.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V66.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V66.AchDetails.t()
            | AdyenEx.Checkout.V66.AffirmDetails.t()
            | AdyenEx.Checkout.V66.AfterpayDetails.t()
            | AdyenEx.Checkout.V66.AlmaDetails.t()
            | AdyenEx.Checkout.V66.AmazonPayDetails.t()
            | AdyenEx.Checkout.V66.AncvDetails.t()
            | AdyenEx.Checkout.V66.AndroidPayDetails.t()
            | AdyenEx.Checkout.V66.ApplePayDetails.t()
            | AdyenEx.Checkout.V66.AuPayDetails.t()
            | AdyenEx.Checkout.V66.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V66.BillDeskDetails.t()
            | AdyenEx.Checkout.V66.BlikDetails.t()
            | AdyenEx.Checkout.V66.CardDetails.t()
            | AdyenEx.Checkout.V66.CashAppDetails.t()
            | AdyenEx.Checkout.V66.CellulantDetails.t()
            | AdyenEx.Checkout.V66.DBaraiDetails.t()
            | AdyenEx.Checkout.V66.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V66.DokuDetails.t()
            | AdyenEx.Checkout.V66.DragonpayDetails.t()
            | AdyenEx.Checkout.V66.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V66.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V66.EftDetails.t()
            | AdyenEx.Checkout.V66.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V66.FastlaneDetails.t()
            | AdyenEx.Checkout.V66.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V66.GooglePayDetails.t()
            | AdyenEx.Checkout.V66.IdealDetails.t()
            | AdyenEx.Checkout.V66.KlarnaDetails.t()
            | AdyenEx.Checkout.V66.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V66.MasterpassDetails.t()
            | AdyenEx.Checkout.V66.MbwayDetails.t()
            | AdyenEx.Checkout.V66.MobilePayDetails.t()
            | AdyenEx.Checkout.V66.MolPayDetails.t()
            | AdyenEx.Checkout.V66.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V66.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V66.PayByBankDetails.t()
            | AdyenEx.Checkout.V66.PayPalDetails.t()
            | AdyenEx.Checkout.V66.PayPayDetails.t()
            | AdyenEx.Checkout.V66.PayToDetails.t()
            | AdyenEx.Checkout.V66.PayUUpiDetails.t()
            | AdyenEx.Checkout.V66.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V66.PaymentDetails.t()
            | AdyenEx.Checkout.V66.PixDetails.t()
            | AdyenEx.Checkout.V66.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V66.PseDetails.t()
            | AdyenEx.Checkout.V66.RakutenPayDetails.t()
            | AdyenEx.Checkout.V66.RatepayDetails.t()
            | AdyenEx.Checkout.V66.RivertyDetails.t()
            | AdyenEx.Checkout.V66.SamsungPayDetails.t()
            | AdyenEx.Checkout.V66.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V66.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V66.TwintDetails.t()
            | AdyenEx.Checkout.V66.UpiCollectDetails.t()
            | AdyenEx.Checkout.V66.UpiIntentDetails.t()
            | AdyenEx.Checkout.V66.UpiQrDetails.t()
            | AdyenEx.Checkout.V66.VippsDetails.t()
            | AdyenEx.Checkout.V66.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V66.WeChatPayDetails.t()
            | AdyenEx.Checkout.V66.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V66.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V66.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V66.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V66.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V66.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V66.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          thirdPartyTokenRedundancyInfo:
            AdyenEx.Checkout.V66.ThirdPartyTokenRedundancyInfo.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V66.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {AdyenEx.Checkout.V66.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V66.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V66.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V66.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V66.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V66.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V66.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V66.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V66.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V66.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V66.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V66.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V66.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V66.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V66.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V66.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V66.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V66.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V66.AchDetails, :t},
           {AdyenEx.Checkout.V66.AffirmDetails, :t},
           {AdyenEx.Checkout.V66.AfterpayDetails, :t},
           {AdyenEx.Checkout.V66.AlmaDetails, :t},
           {AdyenEx.Checkout.V66.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V66.AncvDetails, :t},
           {AdyenEx.Checkout.V66.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V66.ApplePayDetails, :t},
           {AdyenEx.Checkout.V66.AuPayDetails, :t},
           {AdyenEx.Checkout.V66.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V66.BillDeskDetails, :t},
           {AdyenEx.Checkout.V66.BlikDetails, :t},
           {AdyenEx.Checkout.V66.CardDetails, :t},
           {AdyenEx.Checkout.V66.CashAppDetails, :t},
           {AdyenEx.Checkout.V66.CellulantDetails, :t},
           {AdyenEx.Checkout.V66.DBaraiDetails, :t},
           {AdyenEx.Checkout.V66.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V66.DokuDetails, :t},
           {AdyenEx.Checkout.V66.DragonpayDetails, :t},
           {AdyenEx.Checkout.V66.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V66.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V66.EftDetails, :t},
           {AdyenEx.Checkout.V66.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V66.FastlaneDetails, :t},
           {AdyenEx.Checkout.V66.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V66.GooglePayDetails, :t},
           {AdyenEx.Checkout.V66.IdealDetails, :t},
           {AdyenEx.Checkout.V66.KlarnaDetails, :t},
           {AdyenEx.Checkout.V66.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V66.MasterpassDetails, :t},
           {AdyenEx.Checkout.V66.MbwayDetails, :t},
           {AdyenEx.Checkout.V66.MobilePayDetails, :t},
           {AdyenEx.Checkout.V66.MolPayDetails, :t},
           {AdyenEx.Checkout.V66.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V66.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V66.PayByBankDetails, :t},
           {AdyenEx.Checkout.V66.PayPalDetails, :t},
           {AdyenEx.Checkout.V66.PayPayDetails, :t},
           {AdyenEx.Checkout.V66.PayToDetails, :t},
           {AdyenEx.Checkout.V66.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V66.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V66.PaymentDetails, :t},
           {AdyenEx.Checkout.V66.PixDetails, :t},
           {AdyenEx.Checkout.V66.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V66.PseDetails, :t},
           {AdyenEx.Checkout.V66.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V66.RatepayDetails, :t},
           {AdyenEx.Checkout.V66.RivertyDetails, :t},
           {AdyenEx.Checkout.V66.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V66.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V66.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V66.TwintDetails, :t},
           {AdyenEx.Checkout.V66.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V66.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V66.UpiQrDetails, :t},
           {AdyenEx.Checkout.V66.VippsDetails, :t},
           {AdyenEx.Checkout.V66.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V66.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V66.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V66.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V66.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V66.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V66.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V66.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V66.Surcharge, :t},
      telephoneNumber: :string,
      thirdPartyTokenRedundancyInfo: {AdyenEx.Checkout.V66.ThirdPartyTokenRedundancyInfo, :t},
      threeDS2RequestData: {AdyenEx.Checkout.V66.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
