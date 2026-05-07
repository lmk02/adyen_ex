defmodule AdyenEx.Checkout.V72.PaymentRefundRequest do
  @moduledoc """
  Provides struct and type for a PaymentRefundRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V72.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V72.ApplicationInfo.t() | nil,
          capturePspReference: String.t() | nil,
          enhancedSchemeData: AdyenEx.Checkout.V72.EnhancedSchemeData.t() | nil,
          lineItems: [AdyenEx.Checkout.V72.LineItem.t()] | nil,
          merchantAccount: String.t(),
          merchantRefundReason: String.t() | nil,
          reference: String.t() | nil,
          splits: [AdyenEx.Checkout.V72.Split.t()] | nil,
          store: String.t() | nil
        }

  defstruct [
    :amount,
    :applicationInfo,
    :capturePspReference,
    :enhancedSchemeData,
    :lineItems,
    :merchantAccount,
    :merchantRefundReason,
    :reference,
    :splits,
    :store
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V72.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V72.ApplicationInfo, :t},
      capturePspReference: :string,
      enhancedSchemeData: {AdyenEx.Checkout.V72.EnhancedSchemeData, :t},
      lineItems: [{AdyenEx.Checkout.V72.LineItem, :t}],
      merchantAccount: :string,
      merchantRefundReason:
        {:enum, ["FRAUD", "CUSTOMER REQUEST", "RETURN", "DUPLICATE", "OTHER"]},
      reference: :string,
      splits: [{AdyenEx.Checkout.V72.Split, :t}],
      store: :string
    ]
  end
end
