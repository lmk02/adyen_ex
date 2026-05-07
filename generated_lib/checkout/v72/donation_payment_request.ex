defmodule AdyenEx.Checkout.V72.DonationPaymentRequest do
  @moduledoc """
  Provides struct and type for a DonationPaymentRequest
  """

  @type t :: %__MODULE__{
          accountInfo: AdyenEx.Checkout.V72.AccountInfo.t() | nil,
          amount: AdyenEx.Checkout.V72.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V72.ApplicationInfo.t() | nil,
          authenticationData: AdyenEx.Checkout.V72.AuthenticationData.t() | nil,
          billingAddress: AdyenEx.Checkout.V72.BillingAddress.t() | nil,
          browserInfo: AdyenEx.Checkout.V72.BrowserInfo.t() | nil,
          channel: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          countryCode: String.t() | nil,
          dateOfBirth: DateTime.t() | nil,
          deliveryAddress: AdyenEx.Checkout.V72.DeliveryAddress.t() | nil,
          deviceFingerprint: String.t() | nil,
          donationAccount: String.t() | nil,
          donationCampaignId: String.t() | nil,
          donationOriginalPspReference: String.t() | nil,
          donationToken: String.t() | nil,
          lineItems: [AdyenEx.Checkout.V72.LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRiskIndicator: AdyenEx.Checkout.V72.MerchantRiskIndicator.t() | nil,
          metadata: map | nil,
          mpiData: AdyenEx.Checkout.V72.ThreeDSecureData.t() | nil,
          origin: String.t() | nil,
          paymentMethod:
            AdyenEx.Checkout.V72.ApplePayDonations.t()
            | AdyenEx.Checkout.V72.CardDonations.t()
            | AdyenEx.Checkout.V72.GooglePayDonations.t()
            | AdyenEx.Checkout.V72.IdealDonations.t()
            | AdyenEx.Checkout.V72.PayWithGoogleDonations.t()
            | nil,
          recurringProcessingModel: String.t() | nil,
          redirectFromIssuerMethod: String.t() | nil,
          redirectToIssuerMethod: String.t() | nil,
          reference: String.t(),
          returnUrl: String.t(),
          sessionValidity: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperIP: String.t() | nil,
          shopperInteraction: String.t() | nil,
          shopperLocale: String.t() | nil,
          shopperName: AdyenEx.Checkout.V72.ShopperName.t() | nil,
          shopperReference: String.t() | nil,
          socialSecurityNumber: String.t() | nil,
          store: String.t() | nil,
          telephoneNumber: String.t() | nil,
          threeDS2RequestData: AdyenEx.Checkout.V72.ThreeDs2RequestFields.t() | nil
        }

  defstruct [
    :accountInfo,
    :amount,
    :applicationInfo,
    :authenticationData,
    :billingAddress,
    :browserInfo,
    :channel,
    :checkoutAttemptId,
    :countryCode,
    :dateOfBirth,
    :deliveryAddress,
    :deviceFingerprint,
    :donationAccount,
    :donationCampaignId,
    :donationOriginalPspReference,
    :donationToken,
    :lineItems,
    :merchantAccount,
    :merchantRiskIndicator,
    :metadata,
    :mpiData,
    :origin,
    :paymentMethod,
    :recurringProcessingModel,
    :redirectFromIssuerMethod,
    :redirectToIssuerMethod,
    :reference,
    :returnUrl,
    :sessionValidity,
    :shopperEmail,
    :shopperIP,
    :shopperInteraction,
    :shopperLocale,
    :shopperName,
    :shopperReference,
    :socialSecurityNumber,
    :store,
    :telephoneNumber,
    :threeDS2RequestData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountInfo: {AdyenEx.Checkout.V72.AccountInfo, :t},
      amount: {AdyenEx.Checkout.V72.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V72.ApplicationInfo, :t},
      authenticationData: {AdyenEx.Checkout.V72.AuthenticationData, :t},
      billingAddress: {AdyenEx.Checkout.V72.BillingAddress, :t},
      browserInfo: {AdyenEx.Checkout.V72.BrowserInfo, :t},
      channel: {:enum, ["iOS", "Android", "Web"]},
      checkoutAttemptId: :string,
      countryCode: :string,
      dateOfBirth: {:string, "date-time"},
      deliveryAddress: {AdyenEx.Checkout.V72.DeliveryAddress, :t},
      deviceFingerprint: :string,
      donationAccount: :string,
      donationCampaignId: :string,
      donationOriginalPspReference: :string,
      donationToken: :string,
      lineItems: [{AdyenEx.Checkout.V72.LineItem, :t}],
      merchantAccount: :string,
      merchantRiskIndicator: {AdyenEx.Checkout.V72.MerchantRiskIndicator, :t},
      metadata: :map,
      mpiData: {AdyenEx.Checkout.V72.ThreeDSecureData, :t},
      origin: :string,
      paymentMethod:
        {:union,
         [
           {AdyenEx.Checkout.V72.ApplePayDonations, :t},
           {AdyenEx.Checkout.V72.CardDonations, :t},
           {AdyenEx.Checkout.V72.GooglePayDonations, :t},
           {AdyenEx.Checkout.V72.IdealDonations, :t},
           {AdyenEx.Checkout.V72.PayWithGoogleDonations, :t}
         ]},
      recurringProcessingModel: {:enum, ["CardOnFile", "Subscription", "UnscheduledCardOnFile"]},
      redirectFromIssuerMethod: :string,
      redirectToIssuerMethod: :string,
      reference: :string,
      returnUrl: :string,
      sessionValidity: :string,
      shopperEmail: :string,
      shopperIP: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS"]},
      shopperLocale: :string,
      shopperName: {AdyenEx.Checkout.V72.ShopperName, :t},
      shopperReference: :string,
      socialSecurityNumber: :string,
      store: :string,
      telephoneNumber: :string,
      threeDS2RequestData: {AdyenEx.Checkout.V72.ThreeDs2RequestFields, :t}
    ]
  end
end
