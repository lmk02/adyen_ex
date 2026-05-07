defmodule AdyenEx.Fund.V3.AccountTransactionListWrapper do
  @moduledoc """
  Provides struct and type for a AccountTransactionListWrapper
  """

  @type t :: %__MODULE__{AccountTransactionList: AdyenEx.Fund.V3.AccountTransactionList.t() | nil}

  defstruct [:AccountTransactionList]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AccountTransactionList: {AdyenEx.Fund.V3.AccountTransactionList, :t}]
  end
end
