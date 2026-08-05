defmodule AdyenEx.Checkout.V41.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V41.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V41.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V41.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V41.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V41.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V41.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V41.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V41.Company.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V41.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V41.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V41.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V41.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V41.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V41.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V41.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V41.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V41.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V41.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V41.AchDetails.t()
            | AdyenEx.Checkout.V41.AffirmDetails.t()
            | AdyenEx.Checkout.V41.AfterpayDetails.t()
            | AdyenEx.Checkout.V41.AlmaDetails.t()
            | AdyenEx.Checkout.V41.AmazonPayDetails.t()
            | AdyenEx.Checkout.V41.AncvDetails.t()
            | AdyenEx.Checkout.V41.AndroidPayDetails.t()
            | AdyenEx.Checkout.V41.ApplePayDetails.t()
            | AdyenEx.Checkout.V41.AuPayDetails.t()
            | AdyenEx.Checkout.V41.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V41.BillDeskDetails.t()
            | AdyenEx.Checkout.V41.BlikDetails.t()
            | AdyenEx.Checkout.V41.CardDetails.t()
            | AdyenEx.Checkout.V41.CashAppDetails.t()
            | AdyenEx.Checkout.V41.CellulantDetails.t()
            | AdyenEx.Checkout.V41.DBaraiDetails.t()
            | AdyenEx.Checkout.V41.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V41.DokuDetails.t()
            | AdyenEx.Checkout.V41.DragonpayDetails.t()
            | AdyenEx.Checkout.V41.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V41.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V41.EftDetails.t()
            | AdyenEx.Checkout.V41.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V41.FastlaneDetails.t()
            | AdyenEx.Checkout.V41.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V41.GooglePayDetails.t()
            | AdyenEx.Checkout.V41.IdealDetails.t()
            | AdyenEx.Checkout.V41.KlarnaDetails.t()
            | AdyenEx.Checkout.V41.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V41.MasterpassDetails.t()
            | AdyenEx.Checkout.V41.MbwayDetails.t()
            | AdyenEx.Checkout.V41.MobilePayDetails.t()
            | AdyenEx.Checkout.V41.MolPayDetails.t()
            | AdyenEx.Checkout.V41.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V41.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V41.PayByBankDetails.t()
            | AdyenEx.Checkout.V41.PayPalDetails.t()
            | AdyenEx.Checkout.V41.PayPayDetails.t()
            | AdyenEx.Checkout.V41.PayToDetails.t()
            | AdyenEx.Checkout.V41.PayUUpiDetails.t()
            | AdyenEx.Checkout.V41.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V41.PaymentDetails.t()
            | AdyenEx.Checkout.V41.PixDetails.t()
            | AdyenEx.Checkout.V41.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V41.PseDetails.t()
            | AdyenEx.Checkout.V41.RakutenPayDetails.t()
            | AdyenEx.Checkout.V41.RatepayDetails.t()
            | AdyenEx.Checkout.V41.RivertyDetails.t()
            | AdyenEx.Checkout.V41.SamsungPayDetails.t()
            | AdyenEx.Checkout.V41.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V41.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V41.TwintDetails.t()
            | AdyenEx.Checkout.V41.UpiCollectDetails.t()
            | AdyenEx.Checkout.V41.UpiIntentDetails.t()
            | AdyenEx.Checkout.V41.UpiQrDetails.t()
            | AdyenEx.Checkout.V41.VippsDetails.t()
            | AdyenEx.Checkout.V41.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V41.WeChatPayDetails.t()
            | AdyenEx.Checkout.V41.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V41.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V41.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V41.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V41.Split.t()] | nil,
          store: String.t() | nil,
          subMerchants: [AdyenEx.Checkout.V41.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V41.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          thirdPartyTokenRedundancyInfo:
            AdyenEx.Checkout.V41.ThirdPartyTokenRedundancyInfo.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V41.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {AdyenEx.Checkout.V41.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V41.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V41.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V41.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V41.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V41.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V41.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V41.Company, :t},
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V41.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V41.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V41.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V41.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V41.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V41.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V41.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V41.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V41.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V41.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V41.AchDetails, :t},
           {AdyenEx.Checkout.V41.AffirmDetails, :t},
           {AdyenEx.Checkout.V41.AfterpayDetails, :t},
           {AdyenEx.Checkout.V41.AlmaDetails, :t},
           {AdyenEx.Checkout.V41.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V41.AncvDetails, :t},
           {AdyenEx.Checkout.V41.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V41.ApplePayDetails, :t},
           {AdyenEx.Checkout.V41.AuPayDetails, :t},
           {AdyenEx.Checkout.V41.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V41.BillDeskDetails, :t},
           {AdyenEx.Checkout.V41.BlikDetails, :t},
           {AdyenEx.Checkout.V41.CardDetails, :t},
           {AdyenEx.Checkout.V41.CashAppDetails, :t},
           {AdyenEx.Checkout.V41.CellulantDetails, :t},
           {AdyenEx.Checkout.V41.DBaraiDetails, :t},
           {AdyenEx.Checkout.V41.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V41.DokuDetails, :t},
           {AdyenEx.Checkout.V41.DragonpayDetails, :t},
           {AdyenEx.Checkout.V41.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V41.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V41.EftDetails, :t},
           {AdyenEx.Checkout.V41.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V41.FastlaneDetails, :t},
           {AdyenEx.Checkout.V41.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V41.GooglePayDetails, :t},
           {AdyenEx.Checkout.V41.IdealDetails, :t},
           {AdyenEx.Checkout.V41.KlarnaDetails, :t},
           {AdyenEx.Checkout.V41.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V41.MasterpassDetails, :t},
           {AdyenEx.Checkout.V41.MbwayDetails, :t},
           {AdyenEx.Checkout.V41.MobilePayDetails, :t},
           {AdyenEx.Checkout.V41.MolPayDetails, :t},
           {AdyenEx.Checkout.V41.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V41.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V41.PayByBankDetails, :t},
           {AdyenEx.Checkout.V41.PayPalDetails, :t},
           {AdyenEx.Checkout.V41.PayPayDetails, :t},
           {AdyenEx.Checkout.V41.PayToDetails, :t},
           {AdyenEx.Checkout.V41.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V41.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V41.PaymentDetails, :t},
           {AdyenEx.Checkout.V41.PixDetails, :t},
           {AdyenEx.Checkout.V41.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V41.PseDetails, :t},
           {AdyenEx.Checkout.V41.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V41.RatepayDetails, :t},
           {AdyenEx.Checkout.V41.RivertyDetails, :t},
           {AdyenEx.Checkout.V41.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V41.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V41.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V41.TwintDetails, :t},
           {AdyenEx.Checkout.V41.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V41.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V41.UpiQrDetails, :t},
           {AdyenEx.Checkout.V41.VippsDetails, :t},
           {AdyenEx.Checkout.V41.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V41.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V41.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V41.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V41.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V41.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V41.Split, :t}],
      store: :string,
      subMerchants: [{AdyenEx.Checkout.V41.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V41.Surcharge, :t},
      telephoneNumber: :string,
      thirdPartyTokenRedundancyInfo: {AdyenEx.Checkout.V41.ThirdPartyTokenRedundancyInfo, :t},
      threeDS2RequestData: {AdyenEx.Checkout.V41.ThreeDs2RequestFields, :t},
      trustedShopper: :boolean
    ]
  end
end
