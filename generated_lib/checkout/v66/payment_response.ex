defmodule AdyenEx.Checkout.V66.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          action:
            AdyenEx.Checkout.V66.CheckoutAwaitAction.t()
            | AdyenEx.Checkout.V66.CheckoutBankTransferAction.t()
            | AdyenEx.Checkout.V66.CheckoutNativeRedirectAction.t()
            | AdyenEx.Checkout.V66.CheckoutQrCodeAction.t()
            | AdyenEx.Checkout.V66.CheckoutRedirectAction.t()
            | AdyenEx.Checkout.V66.CheckoutSDKAction.t()
            | AdyenEx.Checkout.V66.CheckoutThreeDs2ChallengeAction.t()
            | AdyenEx.Checkout.V66.CheckoutThreeDs2FingerPrintAction.t()
            | AdyenEx.Checkout.V66.CheckoutVoucherAction.t()
            | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V66.Amount.t() | nil,
          authentication: map | nil,
          details: [AdyenEx.Checkout.V66.InputDetail.t()] | nil,
          donationToken: String.t() | nil,
          fraudResult: AdyenEx.Checkout.V66.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: AdyenEx.Checkout.V66.CheckoutOrderResponse.t() | nil,
          outputDetails: map | nil,
          paymentData: String.t() | nil,
          pspReference: String.t() | nil,
          redirect: AdyenEx.Checkout.V66.Redirect.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          threeDS2Result: AdyenEx.Checkout.V66.ThreeDs2Result.t() | nil
        }

  defstruct [
    :action,
    :additionalData,
    :amount,
    :authentication,
    :details,
    :donationToken,
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
           {AdyenEx.Checkout.V66.CheckoutAwaitAction, :t},
           {AdyenEx.Checkout.V66.CheckoutBankTransferAction, :t},
           {AdyenEx.Checkout.V66.CheckoutNativeRedirectAction, :t},
           {AdyenEx.Checkout.V66.CheckoutQrCodeAction, :t},
           {AdyenEx.Checkout.V66.CheckoutRedirectAction, :t},
           {AdyenEx.Checkout.V66.CheckoutSDKAction, :t},
           {AdyenEx.Checkout.V66.CheckoutThreeDs2ChallengeAction, :t},
           {AdyenEx.Checkout.V66.CheckoutThreeDs2FingerPrintAction, :t},
           {AdyenEx.Checkout.V66.CheckoutVoucherAction, :t}
         ]},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V66.Amount, :t},
      authentication: :map,
      details: [{AdyenEx.Checkout.V66.InputDetail, :t}],
      donationToken: :string,
      fraudResult: {AdyenEx.Checkout.V66.FraudResult, :t},
      merchantReference: :string,
      order: {AdyenEx.Checkout.V66.CheckoutOrderResponse, :t},
      outputDetails: :map,
      paymentData: :string,
      pspReference: :string,
      redirect: {AdyenEx.Checkout.V66.Redirect, :t},
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
      threeDS2Result: {AdyenEx.Checkout.V66.ThreeDs2Result, :t}
    ]
  end
end
