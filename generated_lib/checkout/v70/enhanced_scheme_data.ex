defmodule AdyenEx.Checkout.V70.EnhancedSchemeData do
  @moduledoc """
  Provides struct and type for a EnhancedSchemeData
  """

  @type t :: %__MODULE__{
          airline: AdyenEx.Checkout.V70.Airline.t() | nil,
          carRental: AdyenEx.Checkout.V70.CarRental.t() | nil,
          levelTwoThree: AdyenEx.Checkout.V70.LevelTwoThree.t() | nil,
          lodging: AdyenEx.Checkout.V70.Lodging.t() | nil,
          temporaryServices: AdyenEx.Checkout.V70.TemporaryServices.t() | nil
        }

  defstruct [:airline, :carRental, :levelTwoThree, :lodging, :temporaryServices]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {AdyenEx.Checkout.V70.Airline, :t},
      carRental: {AdyenEx.Checkout.V70.CarRental, :t},
      levelTwoThree: {AdyenEx.Checkout.V70.LevelTwoThree, :t},
      lodging: {AdyenEx.Checkout.V70.Lodging, :t},
      temporaryServices: {AdyenEx.Checkout.V70.TemporaryServices, :t}
    ]
  end
end
