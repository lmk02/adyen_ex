defmodule AdyenEx.Checkout.V52.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V52.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V52.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V52.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V52.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V52.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V52.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V52.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V52.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V52.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V52.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRealTimeUpdate: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V52.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V52.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V52.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V52.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V52.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V52.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V52.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V52.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V52.AchDetails.t()
            | AdyenEx.Checkout.V52.AffirmDetails.t()
            | AdyenEx.Checkout.V52.AfterpayDetails.t()
            | AdyenEx.Checkout.V52.AlmaDetails.t()
            | AdyenEx.Checkout.V52.AmazonPayDetails.t()
            | AdyenEx.Checkout.V52.AncvDetails.t()
            | AdyenEx.Checkout.V52.AndroidPayDetails.t()
            | AdyenEx.Checkout.V52.ApplePayDetails.t()
            | AdyenEx.Checkout.V52.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V52.BillDeskDetails.t()
            | AdyenEx.Checkout.V52.BlikDetails.t()
            | AdyenEx.Checkout.V52.CardDetails.t()
            | AdyenEx.Checkout.V52.CashAppDetails.t()
            | AdyenEx.Checkout.V52.CellulantDetails.t()
            | AdyenEx.Checkout.V52.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V52.DokuDetails.t()
            | AdyenEx.Checkout.V52.DragonpayDetails.t()
            | AdyenEx.Checkout.V52.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V52.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V52.EftDetails.t()
            | AdyenEx.Checkout.V52.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V52.FastlaneDetails.t()
            | AdyenEx.Checkout.V52.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V52.GooglePayDetails.t()
            | AdyenEx.Checkout.V52.IdealDetails.t()
            | AdyenEx.Checkout.V52.KlarnaDetails.t()
            | AdyenEx.Checkout.V52.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V52.MasterpassDetails.t()
            | AdyenEx.Checkout.V52.MbwayDetails.t()
            | AdyenEx.Checkout.V52.MobilePayDetails.t()
            | AdyenEx.Checkout.V52.MolPayDetails.t()
            | AdyenEx.Checkout.V52.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V52.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V52.PayByBankDetails.t()
            | AdyenEx.Checkout.V52.PayPalDetails.t()
            | AdyenEx.Checkout.V52.PayPayDetails.t()
            | AdyenEx.Checkout.V52.PayToDetails.t()
            | AdyenEx.Checkout.V52.PayUUpiDetails.t()
            | AdyenEx.Checkout.V52.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V52.PaymentDetails.t()
            | AdyenEx.Checkout.V52.PixDetails.t()
            | AdyenEx.Checkout.V52.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V52.PseDetails.t()
            | AdyenEx.Checkout.V52.RakutenPayDetails.t()
            | AdyenEx.Checkout.V52.RatepayDetails.t()
            | AdyenEx.Checkout.V52.RivertyDetails.t()
            | AdyenEx.Checkout.V52.SamsungPayDetails.t()
            | AdyenEx.Checkout.V52.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V52.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V52.TwintDetails.t()
            | AdyenEx.Checkout.V52.UpiCollectDetails.t()
            | AdyenEx.Checkout.V52.UpiIntentDetails.t()
            | AdyenEx.Checkout.V52.UpiQrDetails.t()
            | AdyenEx.Checkout.V52.VippsDetails.t()
            | AdyenEx.Checkout.V52.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V52.WeChatPayDetails.t()
            | AdyenEx.Checkout.V52.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V52.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V52.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V52.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V52.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V52.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V52.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V52.ThreeDs2RequestFields.t() | nil,
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
    :threeDS2RequestData,
    :threeDSAuthenticationOnly,
    :trustedShopper
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {AdyenEx.Checkout.V52.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V52.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V52.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V52.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V52.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V52.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V52.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V52.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V52.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V52.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRealTimeUpdate: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V52.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V52.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V52.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V52.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V52.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V52.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V52.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V52.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V52.AchDetails, :t},
           {AdyenEx.Checkout.V52.AffirmDetails, :t},
           {AdyenEx.Checkout.V52.AfterpayDetails, :t},
           {AdyenEx.Checkout.V52.AlmaDetails, :t},
           {AdyenEx.Checkout.V52.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V52.AncvDetails, :t},
           {AdyenEx.Checkout.V52.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V52.ApplePayDetails, :t},
           {AdyenEx.Checkout.V52.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V52.BillDeskDetails, :t},
           {AdyenEx.Checkout.V52.BlikDetails, :t},
           {AdyenEx.Checkout.V52.CardDetails, :t},
           {AdyenEx.Checkout.V52.CashAppDetails, :t},
           {AdyenEx.Checkout.V52.CellulantDetails, :t},
           {AdyenEx.Checkout.V52.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V52.DokuDetails, :t},
           {AdyenEx.Checkout.V52.DragonpayDetails, :t},
           {AdyenEx.Checkout.V52.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V52.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V52.EftDetails, :t},
           {AdyenEx.Checkout.V52.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V52.FastlaneDetails, :t},
           {AdyenEx.Checkout.V52.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V52.GooglePayDetails, :t},
           {AdyenEx.Checkout.V52.IdealDetails, :t},
           {AdyenEx.Checkout.V52.KlarnaDetails, :t},
           {AdyenEx.Checkout.V52.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V52.MasterpassDetails, :t},
           {AdyenEx.Checkout.V52.MbwayDetails, :t},
           {AdyenEx.Checkout.V52.MobilePayDetails, :t},
           {AdyenEx.Checkout.V52.MolPayDetails, :t},
           {AdyenEx.Checkout.V52.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V52.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V52.PayByBankDetails, :t},
           {AdyenEx.Checkout.V52.PayPalDetails, :t},
           {AdyenEx.Checkout.V52.PayPayDetails, :t},
           {AdyenEx.Checkout.V52.PayToDetails, :t},
           {AdyenEx.Checkout.V52.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V52.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V52.PaymentDetails, :t},
           {AdyenEx.Checkout.V52.PixDetails, :t},
           {AdyenEx.Checkout.V52.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V52.PseDetails, :t},
           {AdyenEx.Checkout.V52.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V52.RatepayDetails, :t},
           {AdyenEx.Checkout.V52.RivertyDetails, :t},
           {AdyenEx.Checkout.V52.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V52.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V52.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V52.TwintDetails, :t},
           {AdyenEx.Checkout.V52.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V52.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V52.UpiQrDetails, :t},
           {AdyenEx.Checkout.V52.VippsDetails, :t},
           {AdyenEx.Checkout.V52.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V52.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V52.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V52.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V52.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V52.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V52.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V52.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V52.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {AdyenEx.Checkout.V52.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
