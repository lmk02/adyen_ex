defmodule AdyenEx.Checkout.V69.BalanceCheckResponse do
  @moduledoc """
  Provides struct and type for a BalanceCheckResponse
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          balance: AdyenEx.Checkout.V69.Amount.t(),
          fraudResult: AdyenEx.Checkout.V69.FraudResult.t() | nil,
          pspReference: String.t() | nil,
          refusalReason: String.t() | nil,
          resultCode: String.t(),
          transactionLimit: AdyenEx.Checkout.V69.Amount.t() | nil
        }

  defstruct [
    :additionalData,
    :balance,
    :fraudResult,
    :pspReference,
    :refusalReason,
    :resultCode,
    :transactionLimit
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      balance: {AdyenEx.Checkout.V69.Amount, :t},
      fraudResult: {AdyenEx.Checkout.V69.FraudResult, :t},
      pspReference: :string,
      refusalReason: :string,
      resultCode: {:enum, ["Success", "NotEnoughBalance", "Failed"]},
      transactionLimit: {AdyenEx.Checkout.V69.Amount, :t}
    ]
  end
end
