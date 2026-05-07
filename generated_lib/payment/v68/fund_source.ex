defmodule AdyenEx.Payment.V68.FundSource do
  @moduledoc """
  Provides struct and type for a FundSource
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          billingAddress: AdyenEx.Payment.V68.Address.t() | nil,
          card: AdyenEx.Payment.V68.Card.t() | nil,
          shopperEmail: String.t() | nil,
          shopperName: AdyenEx.Payment.V68.Name.t() | nil,
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
      billingAddress: {AdyenEx.Payment.V68.Address, :t},
      card: {AdyenEx.Payment.V68.Card, :t},
      shopperEmail: :string,
      shopperName: {AdyenEx.Payment.V68.Name, :t},
      telephoneNumber: :string
    ]
  end
end
