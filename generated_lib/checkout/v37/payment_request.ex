defmodule AdyenEx.Checkout.V37.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          additionalAmount: AdyenEx.Checkout.V37.Amount.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V37.Amount.t(),
          bankAccount: AdyenEx.Checkout.V37.CheckoutBankAccount.t() | nil,
          billingAddress: AdyenEx.Checkout.V37.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V37.BrowserInfo.t() | nil,
          captureDelayHours: integer | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          company: AdyenEx.Checkout.V37.Company.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          dccQuote: AdyenEx.Checkout.V37.ForexQuote.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V37.DeliveryAddress.t() | nil,
          deliveryDate: DateTime.t() | nil,
          deviceFingerprint: String.t() | nil,
          enableOneClick: boolean | nil,
          enablePayOut: boolean | nil,
          enableRecurring: boolean | nil,
          entityType: String.t() | nil,
          fraudOffset: integer | nil,
          fundOrigin: AdyenEx.Checkout.V37.FundOrigin.t() | nil,
          fundRecipient: AdyenEx.Checkout.V37.FundRecipient.t() | nil,
          installments: AdyenEx.Checkout.V37.Installments.t() | nil,
          lineItems: [AdyenEx.Checkout.V37.LineItem.t()] | nil,
          mandate: AdyenEx.Checkout.V37.Mandate.t() | nil,
          mcc: String.t() | nil,
          merchantAccount: String.t(),
          merchantOrderReference: String.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V37.ThreeDSecureData.t() | nil,
          order: AdyenEx.Checkout.V37.EncryptedOrderData.t() | nil,
          orderReference: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V37.AchDetails.t()
            | AdyenEx.Checkout.V37.AffirmDetails.t()
            | AdyenEx.Checkout.V37.AfterpayDetails.t()
            | AdyenEx.Checkout.V37.AlmaDetails.t()
            | AdyenEx.Checkout.V37.AmazonPayDetails.t()
            | AdyenEx.Checkout.V37.AncvDetails.t()
            | AdyenEx.Checkout.V37.AndroidPayDetails.t()
            | AdyenEx.Checkout.V37.ApplePayDetails.t()
            | AdyenEx.Checkout.V37.BacsDirectDebitDetails.t()
            | AdyenEx.Checkout.V37.BillDeskDetails.t()
            | AdyenEx.Checkout.V37.BlikDetails.t()
            | AdyenEx.Checkout.V37.CardDetails.t()
            | AdyenEx.Checkout.V37.CashAppDetails.t()
            | AdyenEx.Checkout.V37.CellulantDetails.t()
            | AdyenEx.Checkout.V37.DirectDebitAuDetails.t()
            | AdyenEx.Checkout.V37.DokuDetails.t()
            | AdyenEx.Checkout.V37.DragonpayDetails.t()
            | AdyenEx.Checkout.V37.EBankingFinlandDetails.t()
            | AdyenEx.Checkout.V37.EcontextVoucherDetails.t()
            | AdyenEx.Checkout.V37.EftDetails.t()
            | AdyenEx.Checkout.V37.ExternalTokenDetails.t()
            | AdyenEx.Checkout.V37.FastlaneDetails.t()
            | AdyenEx.Checkout.V37.GenericIssuerPaymentMethodDetails.t()
            | AdyenEx.Checkout.V37.GooglePayDetails.t()
            | AdyenEx.Checkout.V37.IdealDetails.t()
            | AdyenEx.Checkout.V37.KlarnaDetails.t()
            | AdyenEx.Checkout.V37.KlarnaNetworkDetails.t()
            | AdyenEx.Checkout.V37.MasterpassDetails.t()
            | AdyenEx.Checkout.V37.MbwayDetails.t()
            | AdyenEx.Checkout.V37.MobilePayDetails.t()
            | AdyenEx.Checkout.V37.MolPayDetails.t()
            | AdyenEx.Checkout.V37.OpenInvoiceDetails.t()
            | AdyenEx.Checkout.V37.PayByBankAISDirectDebitDetails.t()
            | AdyenEx.Checkout.V37.PayByBankDetails.t()
            | AdyenEx.Checkout.V37.PayPalDetails.t()
            | AdyenEx.Checkout.V37.PayPayDetails.t()
            | AdyenEx.Checkout.V37.PayToDetails.t()
            | AdyenEx.Checkout.V37.PayUUpiDetails.t()
            | AdyenEx.Checkout.V37.PayWithGoogleDetails.t()
            | AdyenEx.Checkout.V37.PaymentDetails.t()
            | AdyenEx.Checkout.V37.PixDetails.t()
            | AdyenEx.Checkout.V37.PixPayByBankDetails.t()
            | AdyenEx.Checkout.V37.PseDetails.t()
            | AdyenEx.Checkout.V37.RakutenPayDetails.t()
            | AdyenEx.Checkout.V37.RatepayDetails.t()
            | AdyenEx.Checkout.V37.RivertyDetails.t()
            | AdyenEx.Checkout.V37.SamsungPayDetails.t()
            | AdyenEx.Checkout.V37.SepaDirectDebitDetails.t()
            | AdyenEx.Checkout.V37.StoredPaymentMethodDetails.t()
            | AdyenEx.Checkout.V37.TwintDetails.t()
            | AdyenEx.Checkout.V37.UpiCollectDetails.t()
            | AdyenEx.Checkout.V37.UpiIntentDetails.t()
            | AdyenEx.Checkout.V37.UpiQrDetails.t()
            | AdyenEx.Checkout.V37.VippsDetails.t()
            | AdyenEx.Checkout.V37.VisaCheckoutDetails.t()
            | AdyenEx.Checkout.V37.WeChatPayDetails.t()
            | AdyenEx.Checkout.V37.WeChatPayMiniProgramDetails.t()
            | AdyenEx.Checkout.V37.ZipDetails.t(),
          recurringExpiry: String.t() | nil,
          recurringFrequency: String.t() | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          riskData: AdyenEx.Checkout.V37.RiskData.t() | nil,
          sessionValidity: String.t() | nil,
          shopperConversionId: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V37.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          shopperStatement: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          splits: [AdyenEx.Checkout.V37.Split.t()] | nil,
          store: String.t() | nil,
          subMerchants: [AdyenEx.Checkout.V37.SubMerchantInfoWrapper.t()] | nil,
          surcharge: AdyenEx.Checkout.V37.Surcharge.t() | nil,
          telephoneNumber: String.t() | nil,
          trustedShopper: boolean | nil
        }

  defstruct [
    :additionalAmount,
    :additionalData,
    :amount,
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
    :metadata,
    :mpiData,
    :order,
    :orderReference,
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
    :trustedShopper
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalAmount: {AdyenEx.Checkout.V37.Amount, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V37.Amount, :t},
      bankAccount: {AdyenEx.Checkout.V37.CheckoutBankAccount, :t},
      billingAddress: {AdyenEx.Checkout.V37.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V37.BrowserInfo, :t},
      captureDelayHours: {:integer, "int32"},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      company: {AdyenEx.Checkout.V37.Company, :t},
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      dccQuote: {AdyenEx.Checkout.V37.ForexQuote, :t},
      deliveryAddress: {AdyenEx.Checkout.V37.DeliveryAddress, :t},
      deliveryDate: {:string, "date-time"},
      deviceFingerprint: :string,
      enableOneClick: :boolean,
      enablePayOut: :boolean,
      enableRecurring: :boolean,
      entityType: {:enum, ["NaturalPerson", "CompanyName"]},
      fraudOffset: {:integer, "int32"},
      fundOrigin: {AdyenEx.Checkout.V37.FundOrigin, :t},
      fundRecipient: {AdyenEx.Checkout.V37.FundRecipient, :t},
      installments: {AdyenEx.Checkout.V37.Installments, :t},
      lineItems: [{AdyenEx.Checkout.V37.LineItem, :t}],
      mandate: {AdyenEx.Checkout.V37.Mandate, :t},
      mcc: :string,
      merchantAccount: :string,
      merchantOrderReference: :string,
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V37.ThreeDSecureData, :t},
      order: {AdyenEx.Checkout.V37.EncryptedOrderData, :t},
      orderReference: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V37.AchDetails, :t},
           {AdyenEx.Checkout.V37.AffirmDetails, :t},
           {AdyenEx.Checkout.V37.AfterpayDetails, :t},
           {AdyenEx.Checkout.V37.AlmaDetails, :t},
           {AdyenEx.Checkout.V37.AmazonPayDetails, :t},
           {AdyenEx.Checkout.V37.AncvDetails, :t},
           {AdyenEx.Checkout.V37.AndroidPayDetails, :t},
           {AdyenEx.Checkout.V37.ApplePayDetails, :t},
           {AdyenEx.Checkout.V37.BacsDirectDebitDetails, :t},
           {AdyenEx.Checkout.V37.BillDeskDetails, :t},
           {AdyenEx.Checkout.V37.BlikDetails, :t},
           {AdyenEx.Checkout.V37.CardDetails, :t},
           {AdyenEx.Checkout.V37.CashAppDetails, :t},
           {AdyenEx.Checkout.V37.CellulantDetails, :t},
           {AdyenEx.Checkout.V37.DirectDebitAuDetails, :t},
           {AdyenEx.Checkout.V37.DokuDetails, :t},
           {AdyenEx.Checkout.V37.DragonpayDetails, :t},
           {AdyenEx.Checkout.V37.EBankingFinlandDetails, :t},
           {AdyenEx.Checkout.V37.EcontextVoucherDetails, :t},
           {AdyenEx.Checkout.V37.EftDetails, :t},
           {AdyenEx.Checkout.V37.ExternalTokenDetails, :t},
           {AdyenEx.Checkout.V37.FastlaneDetails, :t},
           {AdyenEx.Checkout.V37.GenericIssuerPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V37.GooglePayDetails, :t},
           {AdyenEx.Checkout.V37.IdealDetails, :t},
           {AdyenEx.Checkout.V37.KlarnaDetails, :t},
           {AdyenEx.Checkout.V37.KlarnaNetworkDetails, :t},
           {AdyenEx.Checkout.V37.MasterpassDetails, :t},
           {AdyenEx.Checkout.V37.MbwayDetails, :t},
           {AdyenEx.Checkout.V37.MobilePayDetails, :t},
           {AdyenEx.Checkout.V37.MolPayDetails, :t},
           {AdyenEx.Checkout.V37.OpenInvoiceDetails, :t},
           {AdyenEx.Checkout.V37.PayByBankAISDirectDebitDetails, :t},
           {AdyenEx.Checkout.V37.PayByBankDetails, :t},
           {AdyenEx.Checkout.V37.PayPalDetails, :t},
           {AdyenEx.Checkout.V37.PayPayDetails, :t},
           {AdyenEx.Checkout.V37.PayToDetails, :t},
           {AdyenEx.Checkout.V37.PayUUpiDetails, :t},
           {AdyenEx.Checkout.V37.PayWithGoogleDetails, :t},
           {AdyenEx.Checkout.V37.PaymentDetails, :t},
           {AdyenEx.Checkout.V37.PixDetails, :t},
           {AdyenEx.Checkout.V37.PixPayByBankDetails, :t},
           {AdyenEx.Checkout.V37.PseDetails, :t},
           {AdyenEx.Checkout.V37.RakutenPayDetails, :t},
           {AdyenEx.Checkout.V37.RatepayDetails, :t},
           {AdyenEx.Checkout.V37.RivertyDetails, :t},
           {AdyenEx.Checkout.V37.SamsungPayDetails, :t},
           {AdyenEx.Checkout.V37.SepaDirectDebitDetails, :t},
           {AdyenEx.Checkout.V37.StoredPaymentMethodDetails, :t},
           {AdyenEx.Checkout.V37.TwintDetails, :t},
           {AdyenEx.Checkout.V37.UpiCollectDetails, :t},
           {AdyenEx.Checkout.V37.UpiIntentDetails, :t},
           {AdyenEx.Checkout.V37.UpiQrDetails, :t},
           {AdyenEx.Checkout.V37.VippsDetails, :t},
           {AdyenEx.Checkout.V37.VisaCheckoutDetails, :t},
           {AdyenEx.Checkout.V37.WeChatPayDetails, :t},
           {AdyenEx.Checkout.V37.WeChatPayMiniProgramDetails, :t},
           {AdyenEx.Checkout.V37.ZipDetails, :t}
         ]},
      recurringExpiry: :string,
      recurringFrequency: :string,
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      riskData: {AdyenEx.Checkout.V37.RiskData, :t},
      sessionValidity: :string,
      shopperConversionId: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V37.ShopperName, :t},
      shopperReference: :string,
      shopperStatement: :string,
      socialSecurityNumber: :string,
      splits: [{AdyenEx.Checkout.V37.Split, :t}],
      store: :string,
      subMerchants: [{AdyenEx.Checkout.V37.SubMerchantInfoWrapper, :t}],
      surcharge: {AdyenEx.Checkout.V37.Surcharge, :t},
      telephoneNumber: :string,
      trustedShopper: :boolean
    ]
  end
end
