defmodule AdyenEx.Checkout.V70.TaxTotal do
  @moduledoc """
  Provides struct and type for a TaxTotal
  """

  @type t :: %__MODULE__{amount: AdyenEx.Checkout.V70.Amount.t() | nil}

  defstruct [:amount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [amount: {AdyenEx.Checkout.V70.Amount, :t}]
  end
end
