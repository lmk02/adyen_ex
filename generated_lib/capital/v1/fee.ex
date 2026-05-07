defmodule AdyenEx.Capital.V1.Fee do
  @moduledoc """
  Provides struct and type for a Fee
  """

  @type t :: %__MODULE__{amount: AdyenEx.Capital.V1.Amount.t()}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {AdyenEx.Capital.V1.Amount, :t}]
  end
end
