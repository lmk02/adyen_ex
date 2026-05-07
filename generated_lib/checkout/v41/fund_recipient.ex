defmodule AdyenEx.Checkout.V41.FundRecipient do
  @moduledoc """
  Provides struct and type for a FundRecipient
  """

  @type t :: %__MODULE__{
          IBAN: String.t() | nil,
          billingAddress: AdyenEx.Checkout.V41.Address.t() | nil,
          paymentMethod: AdyenEx.Checkout.V41.CardDetails.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: AdyenEx.Checkout.V41.Name.t() | nil,
          shopperReference: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          subMerchant: AdyenEx.Checkout.V41.SubMerchant.t() | nil,
          telephoneNumber: String.t() | nil,
          walletIdentifier: String.t() | nil,
          walletOwnerTaxId: String.t() | nil,
          walletPurpose: String.t() | nil
        }

  defstruct [
    :IBAN,
    :billingAddress,
    :paymentMethod,
    :shopperEmail,
    :shopperName,
    :shopperReference,
    :storedPaymentMethodId,
    :subMerchant,
    :telephoneNumber,
    :walletIdentifier,
    :walletOwnerTaxId,
    :walletPurpose
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      IBAN: :string,
      billingAddress: {AdyenEx.Checkout.V41.Address, :t},
      paymentMethod: {AdyenEx.Checkout.V41.CardDetails, :t},
      shopperEmail: :string,
      shopperName: {AdyenEx.Checkout.V41.Name, :t},
      shopperReference: :string,
      storedPaymentMethodId: :string,
      subMerchant: {AdyenEx.Checkout.V41.SubMerchant, :t},
      telephoneNumber: :string,
      walletIdentifier: :string,
      walletOwnerTaxId: :string,
      walletPurpose:
        {:enum,
         [
           "identifiedBoleto",
           "transferDifferentWallet",
           "transferOwnWallet",
           "transferSameWallet",
           "unidentifiedBoleto"
         ]}
    ]
  end
end
