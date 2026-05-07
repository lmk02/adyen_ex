defmodule AdyenEx.Checkout.V51.FundOrigin do
  @moduledoc """
  Provides struct and type for a FundOrigin
  """

  @type t :: %__MODULE__{
          billingAddress: AdyenEx.Checkout.V51.Address.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: AdyenEx.Checkout.V51.Name.t() | nil,
          telephoneNumber: String.t() | nil,
          walletIdentifier: String.t() | nil
        }

  defstruct [:billingAddress, :shopperEmail, :shopperName, :telephoneNumber, :walletIdentifier]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      billingAddress: {AdyenEx.Checkout.V51.Address, :t},
      shopperEmail: :string,
      shopperName: {AdyenEx.Checkout.V51.Name, :t},
      telephoneNumber: :string,
      walletIdentifier: :string
    ]
  end
end
