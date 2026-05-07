defmodule AdyenEx.Checkout.V69.PaymentDetailsResponse do
  @moduledoc """
  Provides struct and type for a PaymentDetailsResponse
  """

  @type t :: %__MODULE__{
          action: AdyenEx.Checkout.V69.CheckoutThreeDs2Action.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V69.Amount.t() | nil,
          donationToken: String.t() | nil,
          fraudResult: AdyenEx.Checkout.V69.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: AdyenEx.Checkout.V69.CheckoutOrderResponse.t() | nil,
          paymentMethod: AdyenEx.Checkout.V69.ResponsePaymentMethod.t() | nil,
          paymentValidations: AdyenEx.Checkout.V69.PaymentValidationsResponse.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          shopperLocale: String.t() | nil,
          threeDS2ResponseData: AdyenEx.Checkout.V69.ThreeDs2ResponseData.t() | nil,
          threeDS2Result: AdyenEx.Checkout.V69.ThreeDs2Result.t() | nil,
          threeDSPaymentData: String.t() | nil
        }

  defstruct [
    :action,
    :additionalData,
    :amount,
    :donationToken,
    :fraudResult,
    :merchantReference,
    :order,
    :paymentMethod,
    :paymentValidations,
    :pspReference,
    :refusalReason,
    :refusalReasonCode,
    :resultCode,
    :shopperLocale,
    :threeDS2ResponseData,
    :threeDS2Result,
    :threeDSPaymentData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action: {AdyenEx.Checkout.V69.CheckoutThreeDs2Action, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V69.Amount, :t},
      donationToken: :string,
      fraudResult: {AdyenEx.Checkout.V69.FraudResult, :t},
      merchantReference: :string,
      order: {AdyenEx.Checkout.V69.CheckoutOrderResponse, :t},
      paymentMethod: {AdyenEx.Checkout.V69.ResponsePaymentMethod, :t},
      paymentValidations: {AdyenEx.Checkout.V69.PaymentValidationsResponse, :t},
      pspReference: :string,
      refusalReason: :string,
      refusalReasonCode: :string,
      resultCode:
        {:enum,
         [
           "AuthenticationFinished",
           "AuthenticationNotRequired",
           "Authorised",
           "Cancelled",
           "ChallengeShopper",
           "Error",
           "IdentifyShopper",
           "PartiallyAuthorised",
           "Pending",
           "PresentToShopper",
           "Received",
           "RedirectShopper",
           "Refused",
           "Success"
         ]},
      shopperLocale: :string,
      threeDS2ResponseData: {AdyenEx.Checkout.V69.ThreeDs2ResponseData, :t},
      threeDS2Result: {AdyenEx.Checkout.V69.ThreeDs2Result, :t},
      threeDSPaymentData: :string
    ]
  end
end
