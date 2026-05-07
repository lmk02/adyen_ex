defmodule AdyenEx.Checkout.V53.StoredDetails do
  @moduledoc """
  Provides struct and type for a StoredDetails
  """

  @type t :: %__MODULE__{
          bank: AdyenEx.Checkout.V53.BankAccount.t() | nil,
          card: AdyenEx.Checkout.V53.Card.t() | nil,
          emailAddress: String.t() | nil
        }

  defstruct [:bank, :card, :emailAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bank: {AdyenEx.Checkout.V53.BankAccount, :t},
      card: {AdyenEx.Checkout.V53.Card, :t},
      emailAddress: :string
    ]
  end
end
