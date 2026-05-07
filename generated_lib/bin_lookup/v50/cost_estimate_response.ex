defmodule AdyenEx.BinLookup.V50.CostEstimateResponse do
  @moduledoc """
  Provides struct and type for a CostEstimateResponse
  """

  @type t :: %__MODULE__{
          cardBin: AdyenEx.BinLookup.V50.CardBin.t() | nil,
          costEstimateAmount: AdyenEx.BinLookup.V50.Amount.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:cardBin, :costEstimateAmount, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardBin: {AdyenEx.BinLookup.V50.CardBin, :t},
      costEstimateAmount: {AdyenEx.BinLookup.V50.Amount, :t},
      resultCode: :string
    ]
  end
end
