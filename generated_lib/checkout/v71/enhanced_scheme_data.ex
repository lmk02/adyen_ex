defmodule AdyenEx.Checkout.V71.EnhancedSchemeData do
  @moduledoc """
  Provides struct and type for a EnhancedSchemeData
  """

  @type t :: %__MODULE__{
          airline: AdyenEx.Checkout.V71.Airline.t() | nil,
          levelTwoThree: AdyenEx.Checkout.V71.LevelTwoThree.t() | nil
        }

  defstruct [:airline, :levelTwoThree]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {AdyenEx.Checkout.V71.Airline, :t},
      levelTwoThree: {AdyenEx.Checkout.V71.LevelTwoThree, :t}
    ]
  end
end
