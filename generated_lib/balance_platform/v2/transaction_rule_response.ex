defmodule AdyenEx.BalancePlatform.V2.TransactionRuleResponse do
  @moduledoc """
  Provides struct and type for a TransactionRuleResponse
  """

  @type t :: %__MODULE__{transactionRule: AdyenEx.BalancePlatform.V2.TransactionRule.t() | nil}

  defstruct [:transactionRule]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionRule: {AdyenEx.BalancePlatform.V2.TransactionRule, :t}]
  end
end
