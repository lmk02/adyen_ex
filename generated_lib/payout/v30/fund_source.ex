defmodule AdyenEx.Payout.V30.FundSource do
  @moduledoc """
  Provides struct and type for a FundSource
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          billingAddress: AdyenEx.Payout.V30.Address.t() | nil,
          card: AdyenEx.Payout.V30.Card.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: AdyenEx.Payout.V30.Name.t() | nil,
          telephoneNumber: String.t() | nil
        }

  defstruct [
    :additionalData,
    :billingAddress,
    :card,
    :shopperEmail,
    :shopperName,
    :telephoneNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      billingAddress: {AdyenEx.Payout.V30.Address, :t},
      card: {AdyenEx.Payout.V30.Card, :t},
      shopperEmail: :string,
      shopperName: {AdyenEx.Payout.V30.Name, :t},
      telephoneNumber: :string
    ]
  end
end
