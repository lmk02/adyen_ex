defmodule AdyenEx.Checkout.V64.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V64.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V64.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V64.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V64.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V64.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V64.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V64.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V64.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V64.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V64.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRealTimeUpdate: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V64.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V64.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V64.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V64.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V64.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V64.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V64.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V64.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V64.AchDetails.t()
            | AdyenEx.Checkout.V64.AffirmDetails.t()
            | AdyenEx.Checkout.V64.AfterpayDetails.t()
            | AdyenEx.Checkout.V64.AlmaDetails.t()
            | AdyenEx.Checkout.V64.AmazonPayDetails.t()
            | AdyenEx.Checkout.V64.AncvDetails.t()
            | AdyenEx.Checkout.V64.AndroidPayDetails.t()
            | AdyenEx.Checkout.V64.ApplePayDetails.t()
            | AdyenEx.Checkout.V64.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V64.BillDeskDetails.t()
            | AdyenEx.Checkout.V64.BlikDetails.t()
            | AdyenEx.Checkout.V64.CardDetails.t()
            | AdyenEx.Checkout.V64.CashAppDetails.t()
            | AdyenEx.Checkout.V64.CellulantDetails.t()
            | AdyenEx.Checkout.V64.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V64.DokuDetails.t()
            | AdyenEx.Checkout.V64.DragonpayDetails.t()
            | AdyenEx.Checkout.V64.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V64.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V64.EftDetails.t()
            | AdyenEx.Checkout.V64.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V64.FastlaneDetails.t()
            | AdyenEx.Checkout.V64.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V64.GooglePayDetails.t()
            | AdyenEx.Checkout.V64.IdealDetails.t()
            | AdyenEx.Checkout.V64.KlarnaDetails.t()
            | AdyenEx.Checkout.V64.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V64.MasterpassDetails.t()
            | AdyenEx.Checkout.V64.MbwayDetails.t()
            | AdyenEx.Checkout.V64.MobilePayDetails.t()
            | AdyenEx.Checkout.V64.MolPayDetails.t()
            | AdyenEx.Checkout.V64.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V64.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V64.PayByBankDetails.t()
            | AdyenEx.Checkout.V64.PayPalDetails.t()
            | AdyenEx.Checkout.V64.PayPayDetails.t()
            | AdyenEx.Checkout.V64.PayToDetails.t()
            | AdyenEx.Checkout.V64.PayUUpiDetails.t()
            | AdyenEx.Checkout.V64.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V64.PaymentDetails.t()
            | AdyenEx.Checkout.V64.PixDetails.t()
            | AdyenEx.Checkout.V64.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V64.PseDetails.t()
            | AdyenEx.Checkout.V64.RakutenPayDetails.t()
            | AdyenEx.Checkout.V64.RatepayDetails.t()
            | AdyenEx.Checkout.V64.RivertyDetails.t()
            | AdyenEx.Checkout.V64.SamsungPayDetails.t()
            | AdyenEx.Checkout.V64.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V64.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V64.TwintDetails.t()
            | AdyenEx.Checkout.V64.UpiCollectDetails.t()
            | AdyenEx.Checkout.V64.UpiIntentDetails.t()
            | AdyenEx.Checkout.V64.UpiQrDetails.t()
            | AdyenEx.Checkout.V64.VippsDetails.t()
            | AdyenEx.Checkout.V64.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V64.WeChatPayDetails.t()
            | AdyenEx.Checkout.V64.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V64.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V64.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V64.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V64.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V64.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V64.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V64.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {AdyenEx.Checkout.V64.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V64.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V64.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V64.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V64.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V64.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V64.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V64.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V64.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V64.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRealTimeUpdate: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V64.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V64.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V64.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V64.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V64.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V64.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V64.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V64.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V64.AchDetails, :t},
           {AdyenEx.Checkout.V64.AffirmDetails, :t},
           {AdyenEx.Checkout.V64.AfterpayDetails, :t},
           {AdyenEx.Checkout.V64.AlmaDetails, :t},
           {AdyenEx.Checkout.V64.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V64.AncvDetails, :t},
           {AdyenEx.Checkout.V64.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V64.ApplePayDetails, :t},
           {AdyenEx.Checkout.V64.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V64.BillDeskDetails, :t},
           {AdyenEx.Checkout.V64.BlikDetails, :t},
           {AdyenEx.Checkout.V64.CardDetails, :t},
           {AdyenEx.Checkout.V64.CashAppDetails, :t},
           {AdyenEx.Checkout.V64.CellulantDetails, :t},
           {AdyenEx.Checkout.V64.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V64.DokuDetails, :t},
           {AdyenEx.Checkout.V64.DragonpayDetails, :t},
           {AdyenEx.Checkout.V64.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V64.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V64.EftDetails, :t},
           {AdyenEx.Checkout.V64.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V64.FastlaneDetails, :t},
           {AdyenEx.Checkout.V64.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V64.GooglePayDetails, :t},
           {AdyenEx.Checkout.V64.IdealDetails, :t},
           {AdyenEx.Checkout.V64.KlarnaDetails, :t},
           {AdyenEx.Checkout.V64.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V64.MasterpassDetails, :t},
           {AdyenEx.Checkout.V64.MbwayDetails, :t},
           {AdyenEx.Checkout.V64.MobilePayDetails, :t},
           {AdyenEx.Checkout.V64.MolPayDetails, :t},
           {AdyenEx.Checkout.V64.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V64.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V64.PayByBankDetails, :t},
           {AdyenEx.Checkout.V64.PayPalDetails, :t},
           {AdyenEx.Checkout.V64.PayPayDetails, :t},
           {AdyenEx.Checkout.V64.PayToDetails, :t},
           {AdyenEx.Checkout.V64.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V64.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V64.PaymentDetails, :t},
           {AdyenEx.Checkout.V64.PixDetails, :t},
           {AdyenEx.Checkout.V64.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V64.PseDetails, :t},
           {AdyenEx.Checkout.V64.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V64.RatepayDetails, :t},
           {AdyenEx.Checkout.V64.RivertyDetails, :t},
           {AdyenEx.Checkout.V64.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V64.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V64.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V64.TwintDetails, :t},
           {AdyenEx.Checkout.V64.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V64.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V64.UpiQrDetails, :t},
           {AdyenEx.Checkout.V64.VippsDetails, :t},
           {AdyenEx.Checkout.V64.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V64.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V64.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V64.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V64.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V64.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V64.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V64.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V64.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {AdyenEx.Checkout.V64.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
