defmodule AdyenEx.Fund.V3.AccountDetailBalanceWrapper do
  @moduledoc """
  Provides struct and type for a AccountDetailBalanceWrapper
  """

  @type t :: %__MODULE__{AccountDetailBalance: AdyenEx.Fund.V3.AccountDetailBalance.t() | nil}

  defstruct [:AccountDetailBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AccountDetailBalance: {AdyenEx.Fund.V3.AccountDetailBalance, :t}]
  end
end
