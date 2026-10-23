defmodule AdyenEx.Checkout.V72.VerifyShopperTaxIdentificationRequest do
  @moduledoc """
  Provides struct and type for a VerifyShopperTaxIdentificationRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          shopperReference: String.t(),
          shopperTaxIdentification: AdyenEx.Checkout.V72.ShopperTaxIdentification.t()
        }

  defstruct [:merchantAccount, :shopperReference, :shopperTaxIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantAccount: :string,
      shopperReference: :string,
      shopperTaxIdentification: {AdyenEx.Checkout.V72.ShopperTaxIdentification, :t}
    ]
  end
end
