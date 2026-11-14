defmodule AdyenEx.Checkout.V72.VerifyShopperTaxIdentificationResponse do
  @moduledoc """
  Provides struct and type for a VerifyShopperTaxIdentificationResponse
  """

  @type t :: %__MODULE__{
          reason: String.t() | nil,
          reasonCode: String.t() | nil,
          result: String.t() | nil,
          taxVerificationReference: String.t() | nil,
          verifiedShopperTaxIdentification:
            AdyenEx.Checkout.V72.VerifiedShopperTaxIdentification.t() | nil,
          verifiedShopperTaxIdentificationToken: String.t() | nil
        }

  defstruct [
    :reason,
    :reasonCode,
    :result,
    :taxVerificationReference,
    :verifiedShopperTaxIdentification,
    :verifiedShopperTaxIdentificationToken
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      reason: :string,
      reasonCode: :string,
      result: {:enum, ["VALID", "INVALID", "UNKNOWN", "NOT_REQUIRED"]},
      taxVerificationReference: :string,
      verifiedShopperTaxIdentification:
        {AdyenEx.Checkout.V72.VerifiedShopperTaxIdentification, :t},
      verifiedShopperTaxIdentificationToken: :string
    ]
  end
end
