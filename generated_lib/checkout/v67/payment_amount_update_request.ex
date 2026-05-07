defmodule AdyenEx.Checkout.V67.PaymentAmountUpdateRequest do
  @moduledoc """
  Provides struct and type for a PaymentAmountUpdateRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V67.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V67.ApplicationInfo.t() | nil,
          merchantAccount: String.t(),
          reason: String.t() | nil,
          reference: String.t() | nil,
          splits: [AdyenEx.Checkout.V67.Split.t()] | nil
        }

  defstruct [:amount, :applicationInfo, :merchantAccount, :reason, :reference, :splits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V67.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V67.ApplicationInfo, :t},
      merchantAccount: :string,
      reason: {:enum, ["delayedCharge", "noShow"]},
      reference: :string,
      splits: [{AdyenEx.Checkout.V67.Split, :t}]
    ]
  end
end
