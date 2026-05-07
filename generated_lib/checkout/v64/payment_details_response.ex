defmodule AdyenEx.Checkout.V64.PaymentDetailsResponse do
  @moduledoc """
  Provides struct and type for a PaymentDetailsResponse
  """

  @type t :: %__MODULE__{
          action: AdyenEx.Checkout.V64.CheckoutRedirectAction.t() | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V64.Amount.t() | nil,
          authentication: map | nil,
          details: [AdyenEx.Checkout.V64.InputDetail.t()] | nil,
          fraudResult: AdyenEx.Checkout.V64.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: AdyenEx.Checkout.V64.CheckoutOrderResponse.t() | nil,
          outputDetails: map | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          redirect: AdyenEx.Checkout.V64.Redirect.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          shopperLocale: String.t() | nil,
          threeDS2Result: AdyenEx.Checkout.V64.ThreeDs2Result.t() | nil
        }

  defstruct [
    :action,
    :additionalData,
    :amount,
    :authentication,
    :details,
    :fraudResult,
    :merchantReference,
    :order,
    :outputDetails,
    :paymentData,
    :pspReference,
    :redirect,
    :refusalReason,
    :refusalReasonCode,
    :resultCode,
    :shopperLocale,
    :threeDS2Result
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action: {AdyenEx.Checkout.V64.CheckoutRedirectAction, :t},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V64.Amount, :t},
      authentication: :map,
      details: [{AdyenEx.Checkout.V64.InputDetail, :t}],
      fraudResult: {AdyenEx.Checkout.V64.FraudResult, :t},
      merchantReference: :string,
      order: {AdyenEx.Checkout.V64.CheckoutOrderResponse, :t},
      outputDetails: :map,
      paymentData: :string,
      pspReference: :string,
      redirect: {AdyenEx.Checkout.V64.Redirect, :t},
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
      threeDS2Result: {AdyenEx.Checkout.V64.ThreeDs2Result, :t}
    ]
  end
end
