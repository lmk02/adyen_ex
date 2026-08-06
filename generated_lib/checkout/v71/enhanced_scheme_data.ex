defmodule AdyenEx.Checkout.V71.EnhancedSchemeData do
  @moduledoc """
  Provides struct and type for a EnhancedSchemeData
  """

  @type t :: %__MODULE__{
          airline: AdyenEx.Checkout.V71.Airline.t() | nil,
          carRental: AdyenEx.Checkout.V71.CarRental.t() | nil,
          levelTwoThree: AdyenEx.Checkout.V71.LevelTwoThree.t() | nil,
          lodging: AdyenEx.Checkout.V71.Lodging.t() | nil,
          temporaryServices: AdyenEx.Checkout.V71.TemporaryServices.t() | nil
        }

  defstruct [:airline, :carRental, :levelTwoThree, :lodging, :temporaryServices]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {AdyenEx.Checkout.V71.Airline, :t},
      carRental: {AdyenEx.Checkout.V71.CarRental, :t},
      levelTwoThree: {AdyenEx.Checkout.V71.LevelTwoThree, :t},
      lodging: {AdyenEx.Checkout.V71.Lodging, :t},
      temporaryServices: {AdyenEx.Checkout.V71.TemporaryServices, :t}
    ]
  end
end
