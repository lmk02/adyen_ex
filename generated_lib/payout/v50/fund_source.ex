defmodule AdyenEx.Payout.V50.FundSource do
  @moduledoc """
  Provides struct and type for a FundSource
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          billingAddress: AdyenEx.Payout.V50.Address.t() | nil,
          card: AdyenEx.Payout.V50.Card.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: AdyenEx.Payout.V50.Name.t() | nil,
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
      billingAddress: {AdyenEx.Payout.V50.Address, :t},
      card: {AdyenEx.Payout.V50.Card, :t},
      shopperEmail: :string,
      shopperName: {AdyenEx.Payout.V50.Name, :t},
      telephoneNumber: :string
    ]
  end
end
