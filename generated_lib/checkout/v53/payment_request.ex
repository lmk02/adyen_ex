defmodule AdyenEx.Checkout.V53.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V53.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V53.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V53.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V53.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V53.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V53.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V53.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V53.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V53.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V53.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRealTimeUpdate: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V53.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V53.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V53.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V53.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V53.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V53.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V53.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V53.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V53.AchDetails.t()
            | AdyenEx.Checkout.V53.AffirmDetails.t()
            | AdyenEx.Checkout.V53.AfterpayDetails.t()
            | AdyenEx.Checkout.V53.AlmaDetails.t()
            | AdyenEx.Checkout.V53.AmazonPayDetails.t()
            | AdyenEx.Checkout.V53.AncvDetails.t()
            | AdyenEx.Checkout.V53.AndroidPayDetails.t()
            | AdyenEx.Checkout.V53.ApplePayDetails.t()
            | AdyenEx.Checkout.V53.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V53.BillDeskDetails.t()
            | AdyenEx.Checkout.V53.BlikDetails.t()
            | AdyenEx.Checkout.V53.CardDetails.t()
            | AdyenEx.Checkout.V53.CashAppDetails.t()
            | AdyenEx.Checkout.V53.CellulantDetails.t()
            | AdyenEx.Checkout.V53.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V53.DokuDetails.t()
            | AdyenEx.Checkout.V53.DragonpayDetails.t()
            | AdyenEx.Checkout.V53.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V53.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V53.EftDetails.t()
            | AdyenEx.Checkout.V53.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V53.FastlaneDetails.t()
            | AdyenEx.Checkout.V53.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V53.GooglePayDetails.t()
            | AdyenEx.Checkout.V53.IdealDetails.t()
            | AdyenEx.Checkout.V53.KlarnaDetails.t()
            | AdyenEx.Checkout.V53.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V53.MasterpassDetails.t()
            | AdyenEx.Checkout.V53.MbwayDetails.t()
            | AdyenEx.Checkout.V53.MobilePayDetails.t()
            | AdyenEx.Checkout.V53.MolPayDetails.t()
            | AdyenEx.Checkout.V53.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V53.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V53.PayByBankDetails.t()
            | AdyenEx.Checkout.V53.PayPalDetails.t()
            | AdyenEx.Checkout.V53.PayPayDetails.t()
            | AdyenEx.Checkout.V53.PayToDetails.t()
            | AdyenEx.Checkout.V53.PayUUpiDetails.t()
            | AdyenEx.Checkout.V53.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V53.PaymentDetails.t()
            | AdyenEx.Checkout.V53.PixDetails.t()
            | AdyenEx.Checkout.V53.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V53.PseDetails.t()
            | AdyenEx.Checkout.V53.RakutenPayDetails.t()
            | AdyenEx.Checkout.V53.RatepayDetails.t()
            | AdyenEx.Checkout.V53.RivertyDetails.t()
            | AdyenEx.Checkout.V53.SamsungPayDetails.t()
            | AdyenEx.Checkout.V53.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V53.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V53.TwintDetails.t()
            | AdyenEx.Checkout.V53.UpiCollectDetails.t()
            | AdyenEx.Checkout.V53.UpiIntentDetails.t()
            | AdyenEx.Checkout.V53.UpiQrDetails.t()
            | AdyenEx.Checkout.V53.VippsDetails.t()
            | AdyenEx.Checkout.V53.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V53.WeChatPayDetails.t()
            | AdyenEx.Checkout.V53.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V53.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V53.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V53.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V53.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V53.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V53.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V53.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {AdyenEx.Checkout.V53.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V53.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V53.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V53.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V53.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V53.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V53.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V53.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V53.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V53.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRealTimeUpdate: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V53.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V53.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V53.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V53.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V53.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V53.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V53.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V53.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V53.AchDetails, :t},
           {AdyenEx.Checkout.V53.AffirmDetails, :t},
           {AdyenEx.Checkout.V53.AfterpayDetails, :t},
           {AdyenEx.Checkout.V53.AlmaDetails, :t},
           {AdyenEx.Checkout.V53.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V53.AncvDetails, :t},
           {AdyenEx.Checkout.V53.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V53.ApplePayDetails, :t},
           {AdyenEx.Checkout.V53.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V53.BillDeskDetails, :t},
           {AdyenEx.Checkout.V53.BlikDetails, :t},
           {AdyenEx.Checkout.V53.CardDetails, :t},
           {AdyenEx.Checkout.V53.CashAppDetails, :t},
           {AdyenEx.Checkout.V53.CellulantDetails, :t},
           {AdyenEx.Checkout.V53.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V53.DokuDetails, :t},
           {AdyenEx.Checkout.V53.DragonpayDetails, :t},
           {AdyenEx.Checkout.V53.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V53.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V53.EftDetails, :t},
           {AdyenEx.Checkout.V53.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V53.FastlaneDetails, :t},
           {AdyenEx.Checkout.V53.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V53.GooglePayDetails, :t},
           {AdyenEx.Checkout.V53.IdealDetails, :t},
           {AdyenEx.Checkout.V53.KlarnaDetails, :t},
           {AdyenEx.Checkout.V53.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V53.MasterpassDetails, :t},
           {AdyenEx.Checkout.V53.MbwayDetails, :t},
           {AdyenEx.Checkout.V53.MobilePayDetails, :t},
           {AdyenEx.Checkout.V53.MolPayDetails, :t},
           {AdyenEx.Checkout.V53.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V53.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V53.PayByBankDetails, :t},
           {AdyenEx.Checkout.V53.PayPalDetails, :t},
           {AdyenEx.Checkout.V53.PayPayDetails, :t},
           {AdyenEx.Checkout.V53.PayToDetails, :t},
           {AdyenEx.Checkout.V53.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V53.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V53.PaymentDetails, :t},
           {AdyenEx.Checkout.V53.PixDetails, :t},
           {AdyenEx.Checkout.V53.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V53.PseDetails, :t},
           {AdyenEx.Checkout.V53.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V53.RatepayDetails, :t},
           {AdyenEx.Checkout.V53.RivertyDetails, :t},
           {AdyenEx.Checkout.V53.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V53.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V53.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V53.TwintDetails, :t},
           {AdyenEx.Checkout.V53.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V53.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V53.UpiQrDetails, :t},
           {AdyenEx.Checkout.V53.VippsDetails, :t},
           {AdyenEx.Checkout.V53.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V53.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V53.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V53.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V53.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V53.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V53.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V53.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V53.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {AdyenEx.Checkout.V53.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
