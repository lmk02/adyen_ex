defmodule AdyenEx.Transfer.V4.CapitalGrant do
  @moduledoc """
  Provides struct and type for a CapitalGrant
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Transfer.V4.Amount.t() | nil,
          balances: AdyenEx.Transfer.V4.CapitalBalance.t(),
          counterparty: AdyenEx.Transfer.V4.GrantCounterparty.t() | nil,
          fee: AdyenEx.Transfer.V4.Fee.t() | nil,
          grantAccountId: String.t(),
          grantOfferId: String.t(),
          id: String.t(),
          repayment: AdyenEx.Transfer.V4.Repayment.t() | nil,
          status: String.t()
        }

  defstruct [
    :amount,
    :balances,
    :counterparty,
    :fee,
    :grantAccountId,
    :grantOfferId,
    :id,
    :repayment,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Transfer.V4.Amount, :t},
      balances: {AdyenEx.Transfer.V4.CapitalBalance, :t},
      counterparty: {AdyenEx.Transfer.V4.GrantCounterparty, :t},
      fee: {AdyenEx.Transfer.V4.Fee, :t},
      grantAccountId: :string,
      grantOfferId: :string,
      id: :string,
      repayment: {AdyenEx.Transfer.V4.Repayment, :t},
      status: {:enum, ["Pending", "Active", "Repaid", "Failed", "WrittenOff", "Revoked"]}
    ]
  end
end
