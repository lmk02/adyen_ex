defmodule AdyenEx.Payment.V67.FundDestination do
  @moduledoc """
  Provides struct and type for a FundDestination
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          billingAddress: AdyenEx.Payment.V67.Address.t() | nil,
          card: AdyenEx.Payment.V67.Card.t() | nil,
          selectedRecurringDetailReference: String.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: AdyenEx.Payment.V67.Name.t() | nil,
          shopperReference: String.t() | nil,
          subMerchant: AdyenEx.Payment.V67.SubMerchant.t() | nil,
          telephoneNumber: String.t() | nil,
          walletPurpose: String.t() | nil
        }

  defstruct [
    :additionalData,
    :billingAddress,
    :card,
    :selectedRecurringDetailReference,
    :shopperEmail,
    :shopperName,
    :shopperReference,
    :subMerchant,
    :telephoneNumber,
    :walletPurpose
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      billingAddress: {AdyenEx.Payment.V67.Address, :t},
      card: {AdyenEx.Payment.V67.Card, :t},
      selectedRecurringDetailReference: :string,
      shopperEmail: :string,
      shopperName: {AdyenEx.Payment.V67.Name, :t},
      shopperReference: :string,
      subMerchant: {AdyenEx.Payment.V67.SubMerchant, :t},
      telephoneNumber: :string,
      walletPurpose: :string
    ]
  end
end
