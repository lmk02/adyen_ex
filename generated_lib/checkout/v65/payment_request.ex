defmodule AdyenEx.Checkout.V65.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V65.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V65.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V65.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V65.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V65.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V65.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V65.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V65.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V65.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V65.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V65.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V65.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V65.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V65.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V65.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V65.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V65.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V65.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V65.AchDetails.t()
            | AdyenEx.Checkout.V65.AffirmDetails.t()
            | AdyenEx.Checkout.V65.AfterpayDetails.t()
            | AdyenEx.Checkout.V65.AlmaDetails.t()
            | AdyenEx.Checkout.V65.AmazonPayDetails.t()
            | AdyenEx.Checkout.V65.AncvDetails.t()
            | AdyenEx.Checkout.V65.AndroidPayDetails.t()
            | AdyenEx.Checkout.V65.ApplePayDetails.t()
            | AdyenEx.Checkout.V65.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V65.BillDeskDetails.t()
            | AdyenEx.Checkout.V65.BlikDetails.t()
            | AdyenEx.Checkout.V65.CardDetails.t()
            | AdyenEx.Checkout.V65.CashAppDetails.t()
            | AdyenEx.Checkout.V65.CellulantDetails.t()
            | AdyenEx.Checkout.V65.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V65.DokuDetails.t()
            | AdyenEx.Checkout.V65.DragonpayDetails.t()
            | AdyenEx.Checkout.V65.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V65.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V65.EftDetails.t()
            | AdyenEx.Checkout.V65.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V65.FastlaneDetails.t()
            | AdyenEx.Checkout.V65.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V65.GooglePayDetails.t()
            | AdyenEx.Checkout.V65.IdealDetails.t()
            | AdyenEx.Checkout.V65.KlarnaDetails.t()
            | AdyenEx.Checkout.V65.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V65.MasterpassDetails.t()
            | AdyenEx.Checkout.V65.MbwayDetails.t()
            | AdyenEx.Checkout.V65.MobilePayDetails.t()
            | AdyenEx.Checkout.V65.MolPayDetails.t()
            | AdyenEx.Checkout.V65.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V65.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V65.PayByBankDetails.t()
            | AdyenEx.Checkout.V65.PayPalDetails.t()
            | AdyenEx.Checkout.V65.PayPayDetails.t()
            | AdyenEx.Checkout.V65.PayToDetails.t()
            | AdyenEx.Checkout.V65.PayUUpiDetails.t()
            | AdyenEx.Checkout.V65.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V65.PaymentDetails.t()
            | AdyenEx.Checkout.V65.PixDetails.t()
            | AdyenEx.Checkout.V65.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V65.PseDetails.t()
            | AdyenEx.Checkout.V65.RakutenPayDetails.t()
            | AdyenEx.Checkout.V65.RatepayDetails.t()
            | AdyenEx.Checkout.V65.RivertyDetails.t()
            | AdyenEx.Checkout.V65.SamsungPayDetails.t()
            | AdyenEx.Checkout.V65.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V65.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V65.TwintDetails.t()
            | AdyenEx.Checkout.V65.UpiCollectDetails.t()
            | AdyenEx.Checkout.V65.UpiIntentDetails.t()
            | AdyenEx.Checkout.V65.UpiQrDetails.t()
            | AdyenEx.Checkout.V65.VippsDetails.t()
            | AdyenEx.Checkout.V65.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V65.WeChatPayDetails.t()
            | AdyenEx.Checkout.V65.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V65.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V65.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V65.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V65.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V65.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V65.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V65.ThreeDs2RequestFields.t() | nil,
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
    :threeDS2RequestData,
    :threeDSAuthenticationOnly,
    :trustedShopper
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {AdyenEx.Checkout.V65.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V65.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V65.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V65.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V65.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V65.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V65.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V65.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V65.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V65.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V65.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V65.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V65.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V65.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V65.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V65.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V65.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V65.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V65.AchDetails, :t},
           {AdyenEx.Checkout.V65.AffirmDetails, :t},
           {AdyenEx.Checkout.V65.AfterpayDetails, :t},
           {AdyenEx.Checkout.V65.AlmaDetails, :t},
           {AdyenEx.Checkout.V65.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V65.AncvDetails, :t},
           {AdyenEx.Checkout.V65.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V65.ApplePayDetails, :t},
           {AdyenEx.Checkout.V65.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V65.BillDeskDetails, :t},
           {AdyenEx.Checkout.V65.BlikDetails, :t},
           {AdyenEx.Checkout.V65.CardDetails, :t},
           {AdyenEx.Checkout.V65.CashAppDetails, :t},
           {AdyenEx.Checkout.V65.CellulantDetails, :t},
           {AdyenEx.Checkout.V65.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V65.DokuDetails, :t},
           {AdyenEx.Checkout.V65.DragonpayDetails, :t},
           {AdyenEx.Checkout.V65.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V65.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V65.EftDetails, :t},
           {AdyenEx.Checkout.V65.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V65.FastlaneDetails, :t},
           {AdyenEx.Checkout.V65.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V65.GooglePayDetails, :t},
           {AdyenEx.Checkout.V65.IdealDetails, :t},
           {AdyenEx.Checkout.V65.KlarnaDetails, :t},
           {AdyenEx.Checkout.V65.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V65.MasterpassDetails, :t},
           {AdyenEx.Checkout.V65.MbwayDetails, :t},
           {AdyenEx.Checkout.V65.MobilePayDetails, :t},
           {AdyenEx.Checkout.V65.MolPayDetails, :t},
           {AdyenEx.Checkout.V65.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V65.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V65.PayByBankDetails, :t},
           {AdyenEx.Checkout.V65.PayPalDetails, :t},
           {AdyenEx.Checkout.V65.PayPayDetails, :t},
           {AdyenEx.Checkout.V65.PayToDetails, :t},
           {AdyenEx.Checkout.V65.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V65.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V65.PaymentDetails, :t},
           {AdyenEx.Checkout.V65.PixDetails, :t},
           {AdyenEx.Checkout.V65.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V65.PseDetails, :t},
           {AdyenEx.Checkout.V65.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V65.RatepayDetails, :t},
           {AdyenEx.Checkout.V65.RivertyDetails, :t},
           {AdyenEx.Checkout.V65.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V65.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V65.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V65.TwintDetails, :t},
           {AdyenEx.Checkout.V65.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V65.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V65.UpiQrDetails, :t},
           {AdyenEx.Checkout.V65.VippsDetails, :t},
           {AdyenEx.Checkout.V65.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V65.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V65.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V65.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V65.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V65.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V65.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V65.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V65.Surcharge, :t},
      telephoneNumber: :string,
      threeDS2RequestData: {AdyenEx.Checkout.V65.ThreeDs2RequestFields, :t},
      threeDSAuthenticationOnly: :boolean,
      trustedShopper: :boolean
    ]
  end
end
