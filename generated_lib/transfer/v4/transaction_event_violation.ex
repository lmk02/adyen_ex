defmodule AdyenEx.Transfer.V4.TransactionEventViolation do
  @moduledoc """
  Provides struct and type for a TransactionEventViolation
  """

  @type t :: %__MODULE__{
          reason: String.t() | nil,
          transactionRule: AdyenEx.Transfer.V4.TransactionRuleReference.t() | nil,
          transactionRuleSource: AdyenEx.Transfer.V4.TransactionRuleSource.t() | nil
        }

  defstruct [:reason, :transactionRule, :transactionRuleSource]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      reason: :string,
      transactionRule: {AdyenEx.Transfer.V4.TransactionRuleReference, :t},
      transactionRuleSource: {AdyenEx.Transfer.V4.TransactionRuleSource, :t}
    ]
  end
end
