defmodule AdyenEx.ForeignExchange.V1.CalculateRateResponseItem do
  @moduledoc """
  Provides struct and type for a CalculateRateResponseItem
  """

  @type t :: %__MODULE__{
          appliedExchangeRate: number | nil,
          exchangeSide: String.t() | nil,
          sourceAmount: AdyenEx.ForeignExchange.V1.Amount.t() | nil,
          targetAmount: AdyenEx.ForeignExchange.V1.Amount.t() | nil,
          type: String.t() | nil
        }

  defstruct [:appliedExchangeRate, :exchangeSide, :sourceAmount, :targetAmount, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      appliedExchangeRate: :number,
      exchangeSide: :string,
      sourceAmount: {AdyenEx.ForeignExchange.V1.Amount, :t},
      targetAmount: {AdyenEx.ForeignExchange.V1.Amount, :t},
      type: :string
    ]
  end
end
