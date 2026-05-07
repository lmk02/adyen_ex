defmodule AdyenEx.BinLookup.V54.CostEstimateResponse do
  @moduledoc """
  Provides struct and type for a CostEstimateResponse
  """

  @type t :: %__MODULE__{
          cardBin: AdyenEx.BinLookup.V54.CardBin.t() | nil,
          costEstimateAmount: AdyenEx.BinLookup.V54.Amount.t() | nil,
          costEstimateReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:cardBin, :costEstimateAmount, :costEstimateReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardBin: {AdyenEx.BinLookup.V54.CardBin, :t},
      costEstimateAmount: {AdyenEx.BinLookup.V54.Amount, :t},
      costEstimateReference: :string,
      resultCode: :string
    ]
  end
end
