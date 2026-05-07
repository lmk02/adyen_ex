defmodule AdyenEx.Checkout.V65.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          action:
            AdyenEx.Checkout.V65.CheckoutAwaitAction.t()
            | AdyenEx.Checkout.V65.CheckoutBankTransferAction.t()
            | AdyenEx.Checkout.V65.CheckoutNativeRedirectAction.t()
            | AdyenEx.Checkout.V65.CheckoutQrCodeAction.t()
            | AdyenEx.Checkout.V65.CheckoutRedirectAction.t()
            | AdyenEx.Checkout.V65.CheckoutSDKAction.t()
            | AdyenEx.Checkout.V65.CheckoutThreeDs2ChallengeAction.t()
            | AdyenEx.Checkout.V65.CheckoutThreeDs2FingerPrintAction.t()
            | AdyenEx.Checkout.V65.CheckoutVoucherAction.t()
            | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V65.Amount.t() | nil,
          authentication: map | nil,
          details: [AdyenEx.Checkout.V65.InputDetail.t()] | nil,
          fraudResult: AdyenEx.Checkout.V65.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: AdyenEx.Checkout.V65.CheckoutOrderResponse.t() | nil,
          outputDetails: map | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          redirect: AdyenEx.Checkout.V65.Redirect.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          threeDS2Result: AdyenEx.Checkout.V65.ThreeDs2Result.t() | nil
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
           {AdyenEx.Checkout.V65.CheckoutAwaitAction, :t},
           {AdyenEx.Checkout.V65.CheckoutBankTransferAction, :t},
           {AdyenEx.Checkout.V65.CheckoutNativeRedirectAction, :t},
           {AdyenEx.Checkout.V65.CheckoutQrCodeAction, :t},
           {AdyenEx.Checkout.V65.CheckoutRedirectAction, :t},
           {AdyenEx.Checkout.V65.CheckoutSDKAction, :t},
           {AdyenEx.Checkout.V65.CheckoutThreeDs2ChallengeAction, :t},
           {AdyenEx.Checkout.V65.CheckoutThreeDs2FingerPrintAction, :t},
           {AdyenEx.Checkout.V65.CheckoutVoucherAction, :t}
         ]},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V65.Amount, :t},
      authentication: :map,
      details: [{AdyenEx.Checkout.V65.InputDetail, :t}],
      fraudResult: {AdyenEx.Checkout.V65.FraudResult, :t},
      merchantReference: :string,
      order: {AdyenEx.Checkout.V65.CheckoutOrderResponse, :t},
      outputDetails: :map,
      paymentData: :string,
      pspReference: :string,
      redirect: {AdyenEx.Checkout.V65.Redirect, :t},
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
      threeDS2Result: {AdyenEx.Checkout.V65.ThreeDs2Result, :t}
    ]
  end
end
