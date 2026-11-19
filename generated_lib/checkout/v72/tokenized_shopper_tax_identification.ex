defmodule AdyenEx.Checkout.V72.TokenizedShopperTaxIdentification do
  @moduledoc """
  Provides struct and type for a TokenizedShopperTaxIdentification
  """

  @type t :: %__MODULE__{verifiedShopperTaxIdentificationToken: String.t()}

  defstruct [:verifiedShopperTaxIdentificationToken]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [verifiedShopperTaxIdentificationToken: :string]
  end
end
