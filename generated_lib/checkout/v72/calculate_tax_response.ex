defmodule AdyenEx.Checkout.V72.CalculateTaxResponse do
  @moduledoc """
  Provides struct and type for a CalculateTaxResponse
  """

  @type t :: %__MODULE__{
          taxCalculation: AdyenEx.Checkout.V72.TaxCalculation.t() | nil,
          taxCalculationReference: String.t() | nil,
          taxCalculationToken: String.t() | nil
        }

  defstruct [:taxCalculation, :taxCalculationReference, :taxCalculationToken]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      taxCalculation: {AdyenEx.Checkout.V72.TaxCalculation, :t},
      taxCalculationReference: :string,
      taxCalculationToken: :string
    ]
  end
end
