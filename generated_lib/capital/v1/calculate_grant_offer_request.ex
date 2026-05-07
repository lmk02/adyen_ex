defmodule AdyenEx.Capital.V1.CalculateGrantOfferRequest do
  @moduledoc """
  Provides struct and type for a CalculateGrantOfferRequest
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
