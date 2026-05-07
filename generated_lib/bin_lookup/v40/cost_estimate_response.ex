defmodule AdyenEx.BinLookup.V40.CostEstimateResponse do
  @moduledoc """
  Provides struct and type for a CostEstimateResponse
  """

  @type t :: %__MODULE__{
          cardBin: AdyenEx.BinLookup.V40.CardBin.t() | nil,
          costEstimateAmount: AdyenEx.BinLookup.V40.Amount.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:cardBin, :costEstimateAmount, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardBin: {AdyenEx.BinLookup.V40.CardBin, :t},
      costEstimateAmount: {AdyenEx.BinLookup.V40.Amount, :t},
      resultCode: :string
    ]
  end
end
