defmodule AdyenEx.Fund.V3.TransactionListForAccountWrapper do
  @moduledoc """
  Provides struct and type for a TransactionListForAccountWrapper
  """

  @type t :: %__MODULE__{
          TransactionListForAccount: AdyenEx.Fund.V3.TransactionListForAccount.t() | nil
        }

  defstruct [:TransactionListForAccount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [TransactionListForAccount: {AdyenEx.Fund.V3.TransactionListForAccount, :t}]
  end
end
