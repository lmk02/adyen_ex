defmodule AdyenEx.Checkout.V72.TaxCalculation do
  @moduledoc """
  Provides struct and type for a TaxCalculation
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t() | nil,
          taxCalculationContext: AdyenEx.Checkout.V72.TaxCalculationContext.t() | nil,
          taxCalculations: [AdyenEx.Checkout.V72.TaxCalculationComponent.t()] | nil,
          taxableAmount: AdyenEx.Checkout.V72.TaxAmount.t() | nil,
          totalAmount: AdyenEx.Checkout.V72.TaxAmount.t() | nil,
          totalTaxAmount: AdyenEx.Checkout.V72.TaxAmount.t() | nil
        }

  defstruct [
    :merchantAccount,
    :taxCalculationContext,
    :taxCalculations,
    :taxableAmount,
    :totalAmount,
    :totalTaxAmount
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      taxCalculationContext: {AdyenEx.Checkout.V72.TaxCalculationContext, :t},
      taxCalculations: [{AdyenEx.Checkout.V72.TaxCalculationComponent, :t}],
      taxableAmount: {AdyenEx.Checkout.V72.TaxAmount, :t},
      totalAmount: {AdyenEx.Checkout.V72.TaxAmount, :t},
      totalTaxAmount: {AdyenEx.Checkout.V72.TaxAmount, :t}
    ]
  end
end
