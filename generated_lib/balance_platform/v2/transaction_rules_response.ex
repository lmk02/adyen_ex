defmodule AdyenEx.BalancePlatform.V2.TransactionRulesResponse do
  @moduledoc """
  Provides struct and type for a TransactionRulesResponse
  """

  @type t :: %__MODULE__{transactionRules: [AdyenEx.BalancePlatform.V2.TransactionRule.t()] | nil}

  defstruct [:transactionRules]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionRules: [{AdyenEx.BalancePlatform.V2.TransactionRule, :t}]]
  end
end
