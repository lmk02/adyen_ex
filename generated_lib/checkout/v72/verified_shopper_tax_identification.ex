defmodule AdyenEx.Checkout.V72.VerifiedShopperTaxIdentification do
  @moduledoc """
  Provides struct and type for a VerifiedShopperTaxIdentification
  """

  @type t :: %__MODULE__{
          maskedName: String.t() | nil,
          taxCountryCode: String.t() | nil,
          taxIdentificationType: String.t() | nil
        }

  defstruct [:maskedName, :taxCountryCode, :taxIdentificationType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [maskedName: :string, taxCountryCode: :string, taxIdentificationType: {:const, "PAN"}]
  end
end
