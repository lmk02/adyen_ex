defmodule AdyenEx.Checkout.V66.SubMerchantInfo do
  @moduledoc """
  Provides struct and type for a SubMerchantInfo
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Checkout.V66.BillingAddress.t() | nil,
          amount: AdyenEx.Checkout.V66.Amount.t() | nil,
          email: String.t() | nil,
          id: String.t() | nil,
          mcc: String.t() | nil,
          name: String.t() | nil,
          phoneNumber: String.t() | nil,
          registeredSince: String.t() | nil,
          taxId: String.t() | nil,
          url: String.t() | nil
        }

  defstruct [
    :address,
    :amount,
    :email,
    :id,
    :mcc,
    :name,
    :phoneNumber,
    :registeredSince,
    :taxId,
    :url
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {AdyenEx.Checkout.V66.BillingAddress, :t},
      amount: {AdyenEx.Checkout.V66.Amount, :t},
      email: :string,
      id: :string,
      mcc: :string,
      name: :string,
      phoneNumber: :string,
      registeredSince: :string,
      taxId: :string,
      url: :string
    ]
  end
end
