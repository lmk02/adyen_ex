defmodule AdyenEx.Checkout.V72.TaxCalculationContext do
  @moduledoc """
  Provides struct and type for a TaxCalculationContext
  """

  @type t :: %__MODULE__{
          calculationType: String.t(),
          lrs: AdyenEx.Checkout.V72.LrsContext.t(),
          taxCountryCode: String.t()
        }

  defstruct [:calculationType, :lrs, :taxCountryCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      calculationType: {:const, "LRS_TCS"},
      lrs: {AdyenEx.Checkout.V72.LrsContext, :t},
      taxCountryCode: :string
    ]
  end
end
