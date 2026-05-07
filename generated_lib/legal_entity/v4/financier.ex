defmodule AdyenEx.LegalEntity.V4.Financier do
  @moduledoc """
  Provides struct and type for a Financier
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.LegalEntity.V4.Amount.t(),
          firstName: String.t(),
          lastName: String.t(),
          location: String.t()
        }

  defstruct [:amount, :firstName, :lastName, :location]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.LegalEntity.V4.Amount, :t},
      firstName: :string,
      lastName: :string,
      location: :string
    ]
  end
end
