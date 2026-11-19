defmodule AdyenEx.Checkout.V72.TokenizedTaxCalculation do
  @moduledoc """
  Provides struct and type for a TokenizedTaxCalculation
  """

  @type t :: %__MODULE__{taxCalculationToken: String.t()}

  defstruct [:taxCalculationToken]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [taxCalculationToken: :string]
  end
end
