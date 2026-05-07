defmodule AdyenEx.Checkout.V72.PaymentAmountUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateRequest
  """

  @type t :: %__MODULE__{
          adjustAuthType: String.t() | nil,
          adjustAuthorisationData: String.t() | nil,
          amount: AdyenEx.Checkout.V72.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V72.ApplicationInfo.t() | nil,
          industryUsage: String.t() | nil,
          lineItems: [AdyenEx.Checkout.V72.LineItem.t()] | nil,
          merchantAccount: String.t(),
          mpiData: AdyenEx.Checkout.V72.ThreeDSecureData.t() | nil,
          reference: String.t() | nil,
          splits: [AdyenEx.Checkout.V72.Split.t()] | nil
        }

  defstruct [
    :adjustAuthType,
    :adjustAuthorisationData,
    :amount,
    :applicationInfo,
    :industryUsage,
    :lineItems,
    :merchantAccount,
    :mpiData,
    :reference,
    :splits
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      adjustAuthType: {:enum, ["cardholderInitiatedTransaction", "merchantInitiatedTransaction"]},
      adjustAuthorisationData: :string,
      amount: {AdyenEx.Checkout.V72.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V72.ApplicationInfo, :t},
      industryUsage: {:enum, ["delayedCharge", "installment", "noShow"]},
      lineItems: [{AdyenEx.Checkout.V72.LineItem, :t}],
      merchantAccount: :string,
      mpiData: {AdyenEx.Checkout.V72.ThreeDSecureData, :t},
      reference: :string,
      splits: [{AdyenEx.Checkout.V72.Split, :t}]
    ]
  end
end
