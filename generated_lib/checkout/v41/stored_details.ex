defmodule AdyenEx.Checkout.V41.StoredDetails do
  @moduledoc """
  Provides struct and type for a StoredDetails
  """

  @type t :: %__MODULE__{
          bank: AdyenEx.Checkout.V41.BankAccount.t() | nil,
          card: AdyenEx.Checkout.V41.Card.t() | nil,
          emailAddress: String.t() | nil
        }

  defstruct [:bank, :card, :emailAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bank: {AdyenEx.Checkout.V41.BankAccount, :t},
      card: {AdyenEx.Checkout.V41.Card, :t},
      emailAddress: :string
    ]
  end
end
