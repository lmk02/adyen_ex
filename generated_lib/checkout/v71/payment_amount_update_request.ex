defmodule AdyenEx.Checkout.V71.PaymentAmountUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V71.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V71.ApplicationInfo.t() | nil,
          enhancedSchemeData: AdyenEx.Checkout.V71.EnhancedSchemeData.t() | nil,
          industryUsage: String.t() | nil,
          lineItems: [AdyenEx.Checkout.V71.LineItem.t()] | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil,
          splits: [AdyenEx.Checkout.V71.Split.t()] | nil
        }

  defstruct [
    :amount,
    :applicationInfo,
    :enhancedSchemeData,
    :industryUsage,
    :lineItems,
    :merchantAccount,
    :reference,
    :splits
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V71.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V71.ApplicationInfo, :t},
      enhancedSchemeData: {AdyenEx.Checkout.V71.EnhancedSchemeData, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      lineItems: [{AdyenEx.Checkout.V71.LineItem, :t}],
      merchantAccount: :string,
      reference: :string,
      splits: [{AdyenEx.Checkout.V71.Split, :t}]
    ]
  end
end
