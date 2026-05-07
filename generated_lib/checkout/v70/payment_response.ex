defmodule AdyenEx.Checkout.V70.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          action:
            AdyenEx.Checkout.V70.CheckoutAwaitAction.t()
            | AdyenEx.Checkout.V70.CheckoutBankTransferAction.t()
            | AdyenEx.Checkout.V70.CheckoutDelegatedAuthenticationAction.t()
            | AdyenEx.Checkout.V70.CheckoutNativeRedirectAction.t()
            | AdyenEx.Checkout.V70.CheckoutQrCodeAction.t()
            | AdyenEx.Checkout.V70.CheckoutRedirectAction.t()
            | AdyenEx.Checkout.V70.CheckoutSDKAction.t()
            | AdyenEx.Checkout.V70.CheckoutThreeDs2Action.t()
            | AdyenEx.Checkout.V70.CheckoutVoucherAction.t()
            | nil,
          additionalData: map | nil,
          amount: AdyenEx.Checkout.V70.Amount.t() | nil,
          donationToken: String.t() | nil,
          fraudResult: AdyenEx.Checkout.V70.FraudResult.t() | nil,
          merchantReference: String.t() | nil,
          order: AdyenEx.Checkout.V70.CheckoutOrderResponse.t() | nil,
          paymentMethod: AdyenEx.Checkout.V70.ResponsePaymentMethod.t() | nil,
          paymentValidations: AdyenEx.Checkout.V70.PaymentValidationsResponse.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          refusalReasonCode: String.t() | nil,
          resultCode: String.t() | nil,
          threeDS2ResponseData: AdyenEx.Checkout.V70.ThreeDs2ResponseData.t() | nil,
          threeDS2Result: AdyenEx.Checkout.V70.ThreeDs2Result.t() | nil,
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
    :threeDS2ResponseData,
    :threeDS2Result,
    :threeDSPaymentData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      action:
        {:union,
         [
           {AdyenEx.Checkout.V70.CheckoutAwaitAction, :t},
           {AdyenEx.Checkout.V70.CheckoutBankTransferAction, :t},
           {AdyenEx.Checkout.V70.CheckoutDelegatedAuthenticationAction, :t},
           {AdyenEx.Checkout.V70.CheckoutNativeRedirectAction, :t},
           {AdyenEx.Checkout.V70.CheckoutQrCodeAction, :t},
           {AdyenEx.Checkout.V70.CheckoutRedirectAction, :t},
           {AdyenEx.Checkout.V70.CheckoutSDKAction, :t},
           {AdyenEx.Checkout.V70.CheckoutThreeDs2Action, :t},
           {AdyenEx.Checkout.V70.CheckoutVoucherAction, :t}
         ]},
      additionalData: :map,
      amount: {AdyenEx.Checkout.V70.Amount, :t},
      donationToken: :string,
      fraudResult: {AdyenEx.Checkout.V70.FraudResult, :t},
      merchantReference: :string,
      order: {AdyenEx.Checkout.V70.CheckoutOrderResponse, :t},
      paymentMethod: {AdyenEx.Checkout.V70.ResponsePaymentMethod, :t},
      paymentValidations: {AdyenEx.Checkout.V70.PaymentValidationsResponse, :t},
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
      threeDS2ResponseData: {AdyenEx.Checkout.V70.ThreeDs2ResponseData, :t},
      threeDS2Result: {AdyenEx.Checkout.V70.ThreeDs2Result, :t},
      threeDSPaymentData: :string
    ]
  end
end
