defmodule AdyenEx.Checkout.V40.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V40.AccountInfo.t() | nil,
          additionalAmount: AdyenEx.Checkout.V40.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V40.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V40.ApplicationInfo.t() | nil,
          bankAccount: AdyenEx.Checkout.V40.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V40.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V40.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V40.Company.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V40.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V40.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V40.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V40.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V40.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V40.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V40.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          merchantRiskIndicator: AdyenEx.Checkout.V40.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V40.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V40.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V40.AchDetails.t()
            | AdyenEx.Checkout.V40.AffirmDetails.t()
            | AdyenEx.Checkout.V40.AfterpayDetails.t()
            | AdyenEx.Checkout.V40.AlmaDetails.t()
            | AdyenEx.Checkout.V40.AmazonPayDetails.t()
            | AdyenEx.Checkout.V40.AncvDetails.t()
            | AdyenEx.Checkout.V40.AndroidPayDetails.t()
            | AdyenEx.Checkout.V40.ApplePayDetails.t()
            | AdyenEx.Checkout.V40.AuPayDetails.t()
            | AdyenEx.Checkout.V40.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V40.BillDeskDetails.t()
            | AdyenEx.Checkout.V40.BlikDetails.t()
            | AdyenEx.Checkout.V40.CardDetails.t()
            | AdyenEx.Checkout.V40.CashAppDetails.t()
            | AdyenEx.Checkout.V40.CellulantDetails.t()
            | AdyenEx.Checkout.V40.DBaraiDetails.t()
            | AdyenEx.Checkout.V40.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V40.DokuDetails.t()
            | AdyenEx.Checkout.V40.DragonpayDetails.t()
            | AdyenEx.Checkout.V40.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V40.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V40.EftDetails.t()
            | AdyenEx.Checkout.V40.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V40.FastlaneDetails.t()
            | AdyenEx.Checkout.V40.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V40.GooglePayDetails.t()
            | AdyenEx.Checkout.V40.IdealDetails.t()
            | AdyenEx.Checkout.V40.KlarnaDetails.t()
            | AdyenEx.Checkout.V40.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V40.MasterpassDetails.t()
            | AdyenEx.Checkout.V40.MbwayDetails.t()
            | AdyenEx.Checkout.V40.MobilePayDetails.t()
            | AdyenEx.Checkout.V40.MolPayDetails.t()
            | AdyenEx.Checkout.V40.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V40.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V40.PayByBankDetails.t()
            | AdyenEx.Checkout.V40.PayPalDetails.t()
            | AdyenEx.Checkout.V40.PayPayDetails.t()
            | AdyenEx.Checkout.V40.PayToDetails.t()
            | AdyenEx.Checkout.V40.PayUUpiDetails.t()
            | AdyenEx.Checkout.V40.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V40.PaymentDetails.t()
            | AdyenEx.Checkout.V40.PixDetails.t()
            | AdyenEx.Checkout.V40.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V40.PseDetails.t()
            | AdyenEx.Checkout.V40.RakutenPayDetails.t()
            | AdyenEx.Checkout.V40.RatepayDetails.t()
            | AdyenEx.Checkout.V40.RivertyDetails.t()
            | AdyenEx.Checkout.V40.SamsungPayDetails.t()
            | AdyenEx.Checkout.V40.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V40.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V40.TwintDetails.t()
            | AdyenEx.Checkout.V40.UpiCollectDetails.t()
            | AdyenEx.Checkout.V40.UpiIntentDetails.t()
            | AdyenEx.Checkout.V40.UpiQrDetails.t()
            | AdyenEx.Checkout.V40.VippsDetails.t()
            | AdyenEx.Checkout.V40.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V40.WeChatPayDetails.t()
            | AdyenEx.Checkout.V40.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V40.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V40.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V40.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V40.Split.t()] | nil,
          store: String.t() | nil,
          subMerchants: [AdyenEx.Checkout.V40.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V40.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          thirdPartyTokenRedundancyInfo:
            AdyenEx.Checkout.V40.ThirdPartyTokenRedundancyInfo.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V40.ThreeDs2RequestFields.t() | nil,
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
      accountInfo: {AdyenEx.Checkout.V40.AccountInfo, :t},
      additionalAmount: {AdyenEx.Checkout.V40.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V40.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V40.ApplicationInfo, :t},
      bankAccount: {AdyenEx.Checkout.V40.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V40.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V40.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V40.Company, :t},
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V40.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V40.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V40.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V40.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V40.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V40.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V40.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V40.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V40.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V40.EncryptedOrderData, :t},
      orderReference: :string,
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V40.AchDetails, :t},
           {AdyenEx.Checkout.V40.AffirmDetails, :t},
           {AdyenEx.Checkout.V40.AfterpayDetails, :t},
           {AdyenEx.Checkout.V40.AlmaDetails, :t},
           {AdyenEx.Checkout.V40.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V40.AncvDetails, :t},
           {AdyenEx.Checkout.V40.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V40.ApplePayDetails, :t},
           {AdyenEx.Checkout.V40.AuPayDetails, :t},
           {AdyenEx.Checkout.V40.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V40.BillDeskDetails, :t},
           {AdyenEx.Checkout.V40.BlikDetails, :t},
           {AdyenEx.Checkout.V40.CardDetails, :t},
           {AdyenEx.Checkout.V40.CashAppDetails, :t},
           {AdyenEx.Checkout.V40.CellulantDetails, :t},
           {AdyenEx.Checkout.V40.DBaraiDetails, :t},
           {AdyenEx.Checkout.V40.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V40.DokuDetails, :t},
           {AdyenEx.Checkout.V40.DragonpayDetails, :t},
           {AdyenEx.Checkout.V40.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V40.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V40.EftDetails, :t},
           {AdyenEx.Checkout.V40.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V40.FastlaneDetails, :t},
           {AdyenEx.Checkout.V40.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V40.GooglePayDetails, :t},
           {AdyenEx.Checkout.V40.IdealDetails, :t},
           {AdyenEx.Checkout.V40.KlarnaDetails, :t},
           {AdyenEx.Checkout.V40.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V40.MasterpassDetails, :t},
           {AdyenEx.Checkout.V40.MbwayDetails, :t},
           {AdyenEx.Checkout.V40.MobilePayDetails, :t},
           {AdyenEx.Checkout.V40.MolPayDetails, :t},
           {AdyenEx.Checkout.V40.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V40.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V40.PayByBankDetails, :t},
           {AdyenEx.Checkout.V40.PayPalDetails, :t},
           {AdyenEx.Checkout.V40.PayPayDetails, :t},
           {AdyenEx.Checkout.V40.PayToDetails, :t},
           {AdyenEx.Checkout.V40.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V40.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V40.PaymentDetails, :t},
           {AdyenEx.Checkout.V40.PixDetails, :t},
           {AdyenEx.Checkout.V40.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V40.PseDetails, :t},
           {AdyenEx.Checkout.V40.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V40.RatepayDetails, :t},
           {AdyenEx.Checkout.V40.RivertyDetails, :t},
           {AdyenEx.Checkout.V40.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V40.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V40.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V40.TwintDetails, :t},
           {AdyenEx.Checkout.V40.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V40.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V40.UpiQrDetails, :t},
           {AdyenEx.Checkout.V40.VippsDetails, :t},
           {AdyenEx.Checkout.V40.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V40.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V40.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V40.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V40.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V40.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V40.Split, :t}],
      store: :string,
      subMerchants: [{AdyenEx.Checkout.V40.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V40.Surcharge, :t},
      telephoneNumber: :string,
      thirdPartyTokenRedundancyInfo: {AdyenEx.Checkout.V40.ThirdPartyTokenRedundancyInfo, :t},
      threeDS2RequestData: {AdyenEx.Checkout.V40.ThreeDs2RequestFields, :t},
      trustedShopper: :boolean
    ]
  end
end
