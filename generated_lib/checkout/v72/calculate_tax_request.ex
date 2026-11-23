defmodule AdyenEx.Checkout.V72.CalculateTaxRequest do
  @moduledoc """
  Provides struct and type for a CalculateTaxRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          taxCalculationContext: AdyenEx.Checkout.V72.TaxCalculationContext.t(),
          taxableAmount: AdyenEx.Checkout.V72.TaxableAmount.t()
        }

  defstruct [:merchantAccount, :taxCalculationContext, :taxableAmount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      taxCalculationContext: {AdyenEx.Checkout.V72.TaxCalculationContext, :t},
      taxableAmount: {AdyenEx.Checkout.V72.TaxableAmount, :t}
    ]
  end
end
