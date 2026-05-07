defmodule AdyenEx.Checkout.V71.PaymentCaptureResponse do
  @moduledoc """
  Provides struct and type for a PaymentCaptureResponse
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V71.Amount.t(),
          lineItems: [AdyenEx.Checkout.V71.LineItem.t()] | nil,
          merchantAccount: String.t(),
          paymentPspReference: String.t(),
          platformChargebackLogic: AdyenEx.Checkout.V71.PlatformChargebackLogic.t() | nil,
          pspReference: String.t(),
          reference: String.t() | nil,
          splits: [AdyenEx.Checkout.V71.Split.t()] | nil,
          status: String.t(),
          subMerchants: [AdyenEx.Checkout.V71.SubMerchantInfo.t()] | nil
        }

  defstruct [
    :amount,
    :lineItems,
    :merchantAccount,
    :paymentPspReference,
    :platformChargebackLogic,
    :pspReference,
    :reference,
    :splits,
    :status,
    :subMerchants
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V71.Amount, :t},
      lineItems: [{AdyenEx.Checkout.V71.LineItem, :t}],
      merchantAccount: :string,
      paymentPspReference: :string,
      platformChargebackLogic: {AdyenEx.Checkout.V71.PlatformChargebackLogic, :t},
      pspReference: :string,
      reference: :string,
      splits: [{AdyenEx.Checkout.V71.Split, :t}],
      status: {:const, "received"},
      subMerchants: [{AdyenEx.Checkout.V71.SubMerchantInfo, :t}]
    ]
  end
end
