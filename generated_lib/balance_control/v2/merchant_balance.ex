defmodule AdyenEx.BalanceControl.V2.MerchantBalance do
  @moduledoc """
  Provides struct and type for a MerchantBalance
  """

  @type t :: %__MODULE__{
          availableFund: AdyenEx.BalanceControl.V2.Amount.t() | nil,
          deposit: AdyenEx.BalanceControl.V2.Amount.t() | nil,
          merchantAccount: String.t() | nil,
          nextPayout: AdyenEx.BalanceControl.V2.Amount.t() | nil,
          pendingBalance: AdyenEx.BalanceControl.V2.Amount.t() | nil,
          reserve: AdyenEx.BalanceControl.V2.Amount.t() | nil
        }

  defstruct [:availableFund, :deposit, :merchantAccount, :nextPayout, :pendingBalance, :reserve]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      availableFund: {AdyenEx.BalanceControl.V2.Amount, :t},
      deposit: {AdyenEx.BalanceControl.V2.Amount, :t},
      merchantAccount: :string,
      nextPayout: {AdyenEx.BalanceControl.V2.Amount, :t},
      pendingBalance: {AdyenEx.BalanceControl.V2.Amount, :t},
      reserve: {AdyenEx.BalanceControl.V2.Amount, :t}
    ]
  end
end
