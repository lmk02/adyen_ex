defmodule AdyenEx.Checkout.V72.TaxCalculationComponent do
  @moduledoc """
  Provides struct and type for a TaxCalculationComponent
  """

  @type t :: %__MODULE__{
          taxAmount: AdyenEx.Checkout.V72.TaxAmount.t() | nil,
          type: String.t() | nil
        }

  defstruct [:taxAmount, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [taxAmount: {AdyenEx.Checkout.V72.TaxAmount, :t}, type: {:const, "LRS_TCS"}]
  end
end
