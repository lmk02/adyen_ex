defmodule AdyenEx.Checkout.V49.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V49.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V49.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V49.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V49.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V49.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V49.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V49.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V49.Company.t() | nil,
          conversionId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V49.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V49.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V49.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V49.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V49.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V49.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V49.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V49.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V49.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V49.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V49.AchDetails.t()
            | AdyenEx.Checkout.V49.AffirmDetails.t()
            | AdyenEx.Checkout.V49.AfterpayDetails.t()
            | AdyenEx.Checkout.V49.AlmaDetails.t()
            | AdyenEx.Checkout.V49.AmazonPayDetails.t()
            | AdyenEx.Checkout.V49.AncvDetails.t()
            | AdyenEx.Checkout.V49.AndroidPayDetails.t()
            | AdyenEx.Checkout.V49.ApplePayDetails.t()
            | AdyenEx.Checkout.V49.AuPayDetails.t()
            | AdyenEx.Checkout.V49.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V49.BillDeskDetails.t()
            | AdyenEx.Checkout.V49.BlikDetails.t()
            | AdyenEx.Checkout.V49.CardDetails.t()
            | AdyenEx.Checkout.V49.CashAppDetails.t()
            | AdyenEx.Checkout.V49.CellulantDetails.t()
            | AdyenEx.Checkout.V49.DBaraiDetails.t()
            | AdyenEx.Checkout.V49.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V49.DokuDetails.t()
            | AdyenEx.Checkout.V49.DragonpayDetails.t()
            | AdyenEx.Checkout.V49.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V49.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V49.EftDetails.t()
            | AdyenEx.Checkout.V49.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V49.FastlaneDetails.t()
            | AdyenEx.Checkout.V49.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V49.GooglePayDetails.t()
            | AdyenEx.Checkout.V49.IdealDetails.t()
            | AdyenEx.Checkout.V49.KlarnaDetails.t()
            | AdyenEx.Checkout.V49.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V49.MasterpassDetails.t()
            | AdyenEx.Checkout.V49.MbwayDetails.t()
            | AdyenEx.Checkout.V49.MobilePayDetails.t()
            | AdyenEx.Checkout.V49.MolPayDetails.t()
            | AdyenEx.Checkout.V49.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V49.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V49.PayByBankDetails.t()
            | AdyenEx.Checkout.V49.PayPalDetails.t()
            | AdyenEx.Checkout.V49.PayPayDetails.t()
            | AdyenEx.Checkout.V49.PayToDetails.t()
            | AdyenEx.Checkout.V49.PayUUpiDetails.t()
            | AdyenEx.Checkout.V49.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V49.PaymentDetails.t()
            | AdyenEx.Checkout.V49.PixDetails.t()
            | AdyenEx.Checkout.V49.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V49.PseDetails.t()
            | AdyenEx.Checkout.V49.RakutenPayDetails.t()
            | AdyenEx.Checkout.V49.RatepayDetails.t()
            | AdyenEx.Checkout.V49.RivertyDetails.t()
            | AdyenEx.Checkout.V49.SamsungPayDetails.t()
            | AdyenEx.Checkout.V49.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V49.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V49.TwintDetails.t()
            | AdyenEx.Checkout.V49.UpiCollectDetails.t()
            | AdyenEx.Checkout.V49.UpiIntentDetails.t()
            | AdyenEx.Checkout.V49.UpiQrDetails.t()
            | AdyenEx.Checkout.V49.VippsDetails.t()
            | AdyenEx.Checkout.V49.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V49.WeChatPayDetails.t()
            | AdyenEx.Checkout.V49.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V49.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V49.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V49.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V49.Split.t()] | nil,
          store: String.t() | nil,
          storePaymentMethod: boolean | nil,
          subMerchants: [AdyenEx.Checkout.V49.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V49.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          thirdPartyTokenRedundancyInfo:
            AdyenEx.Checkout.V49.ThirdPartyTokenRedundancyInfo.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V49.ThreeDs2RequestFields.t() | nil,
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
    :trustedShopper
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {AdyenEx.Checkout.V49.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V49.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V49.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V49.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V49.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V49.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V49.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V49.Company, :t},
      conversionId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V49.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V49.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V49.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V49.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V49.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V49.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V49.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V49.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V49.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V49.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V49.AchDetails, :t},
           {AdyenEx.Checkout.V49.AffirmDetails, :t},
           {AdyenEx.Checkout.V49.AfterpayDetails, :t},
           {AdyenEx.Checkout.V49.AlmaDetails, :t},
           {AdyenEx.Checkout.V49.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V49.AncvDetails, :t},
           {AdyenEx.Checkout.V49.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V49.ApplePayDetails, :t},
           {AdyenEx.Checkout.V49.AuPayDetails, :t},
           {AdyenEx.Checkout.V49.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V49.BillDeskDetails, :t},
           {AdyenEx.Checkout.V49.BlikDetails, :t},
           {AdyenEx.Checkout.V49.CardDetails, :t},
           {AdyenEx.Checkout.V49.CashAppDetails, :t},
           {AdyenEx.Checkout.V49.CellulantDetails, :t},
           {AdyenEx.Checkout.V49.DBaraiDetails, :t},
           {AdyenEx.Checkout.V49.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V49.DokuDetails, :t},
           {AdyenEx.Checkout.V49.DragonpayDetails, :t},
           {AdyenEx.Checkout.V49.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V49.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V49.EftDetails, :t},
           {AdyenEx.Checkout.V49.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V49.FastlaneDetails, :t},
           {AdyenEx.Checkout.V49.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V49.GooglePayDetails, :t},
           {AdyenEx.Checkout.V49.IdealDetails, :t},
           {AdyenEx.Checkout.V49.KlarnaDetails, :t},
           {AdyenEx.Checkout.V49.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V49.MasterpassDetails, :t},
           {AdyenEx.Checkout.V49.MbwayDetails, :t},
           {AdyenEx.Checkout.V49.MobilePayDetails, :t},
           {AdyenEx.Checkout.V49.MolPayDetails, :t},
           {AdyenEx.Checkout.V49.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V49.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V49.PayByBankDetails, :t},
           {AdyenEx.Checkout.V49.PayPalDetails, :t},
           {AdyenEx.Checkout.V49.PayPayDetails, :t},
           {AdyenEx.Checkout.V49.PayToDetails, :t},
           {AdyenEx.Checkout.V49.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V49.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V49.PaymentDetails, :t},
           {AdyenEx.Checkout.V49.PixDetails, :t},
           {AdyenEx.Checkout.V49.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V49.PseDetails, :t},
           {AdyenEx.Checkout.V49.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V49.RatepayDetails, :t},
           {AdyenEx.Checkout.V49.RivertyDetails, :t},
           {AdyenEx.Checkout.V49.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V49.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V49.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V49.TwintDetails, :t},
           {AdyenEx.Checkout.V49.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V49.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V49.UpiQrDetails, :t},
           {AdyenEx.Checkout.V49.VippsDetails, :t},
           {AdyenEx.Checkout.V49.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V49.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V49.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V49.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V49.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V49.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V49.Split, :t}],
      store: :string,
      storePaymentMethod: :boolean,
      subMerchants: [{AdyenEx.Checkout.V49.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V49.Surcharge, :t},
      telephoneNumber: :string,
      thirdPartyTokenRedundancyInfo: {AdyenEx.Checkout.V49.ThirdPartyTokenRedundancyInfo, :t},
      threeDS2RequestData: {AdyenEx.Checkout.V49.ThreeDs2RequestFields, :t},
      trustedShopper: :boolean
    ]
  end
end
