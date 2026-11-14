defmodule AdyenEx.Checkout.V72.ShopperTaxIdentification do
  @moduledoc """
  Provides struct and type for a ShopperTaxIdentification
  """

  @type t :: %__MODULE__{
          taxCountryCode: String.t(),
          taxIdentificationNumber: String.t(),
          taxIdentificationType: String.t()
        }

  defstruct [:taxCountryCode, :taxIdentificationNumber, :taxIdentificationType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      taxCountryCode: :string,
      taxIdentificationNumber: :string,
      taxIdentificationType: {:const, "PAN"}
    ]
  end
end
