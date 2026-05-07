defmodule AdyenEx.Checkout.V50.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          action:
            AdyenEx.Checkout.V50.CheckoutAwaitAction.t()
            | AdyenEx.Checkout.V50.CheckoutBankTransferAction.t()
            | AdyenEx.Checkout.V50.CheckoutNativeRedirectAction.t()
            | AdyenEx.Checkout.V50.CheckoutQrCodeAction.t()
            | AdyenEx.Checkout.V50.CheckoutRedirectAction.t()
            | AdyenEx.Checkout.V50.CheckoutSDKAction.t()
            | AdyenEx.Checkout.V50.CheckoutThreeDs2ChallengeAction.t()
            | AdyenEx.Checkout.V50.CheckoutThreeDs2FingerPrintAction.t()
            | AdyenEx.Checkout.V50.CheckoutVoucherAction.t()
            | nil,
          additionalData: map | nil,
          authentication: map | nil,
          details: [AdyenEx.Checkout.V50.InputDetail.t()] | nil,
          fraudResult: AdyenEx.Checkout.V50.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: AdyenEx.Checkout.V50.CheckoutOrderResponse.t() | nil,
          outputDetails: map | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          redirect: AdyenEx.Checkout.V50.Redirect.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          threeDS2Result: AdyenEx.Checkout.V50.ThreeDs2Result.t() | nil
        }

  defstruct [
    :action,
    :additionalData,
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
    :threeDS2Result
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action:
        {:union,
         [
           {AdyenEx.Checkout.V50.CheckoutAwaitAction, :t},
           {AdyenEx.Checkout.V50.CheckoutBankTransferAction, :t},
           {AdyenEx.Checkout.V50.CheckoutNativeRedirectAction, :t},
           {AdyenEx.Checkout.V50.CheckoutQrCodeAction, :t},
           {AdyenEx.Checkout.V50.CheckoutRedirectAction, :t},
           {AdyenEx.Checkout.V50.CheckoutSDKAction, :t},
           {AdyenEx.Checkout.V50.CheckoutThreeDs2ChallengeAction, :t},
           {AdyenEx.Checkout.V50.CheckoutThreeDs2FingerPrintAction, :t},
           {AdyenEx.Checkout.V50.CheckoutVoucherAction, :t}
         ]},
      additionalData: :map,
      authentication: :map,
      details: [{AdyenEx.Checkout.V50.InputDetail, :t}],
      fraudResult: {AdyenEx.Checkout.V50.FraudResult, :t},
      merchantReference: :string,
      order: {AdyenEx.Checkout.V50.CheckoutOrderResponse, :t},
      outputDetails: :map,
      paymentData: :string,
      pspReference: :string,
      redirect: {AdyenEx.Checkout.V50.Redirect, :t},
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
      threeDS2Result: {AdyenEx.Checkout.V50.ThreeDs2Result, :t}
    ]
  end
end
