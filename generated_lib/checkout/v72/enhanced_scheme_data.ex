defmodule AdyenEx.Checkout.V72.EnhancedSchemeData do
  @moduledoc """
  Provides struct and type for a EnhancedSchemeData
  """

  @type t :: %__MODULE__{
          airline: AdyenEx.Checkout.V72.Airline.t() | nil,
          carRental: AdyenEx.Checkout.V72.CarRental.t() | nil,
          healthcare: AdyenEx.Checkout.V72.Healthcare.t() | nil,
          levelTwoThree: AdyenEx.Checkout.V72.LevelTwoThree.t() | nil,
          lodging: AdyenEx.Checkout.V72.Lodging.t() | nil,
          temporaryServices: AdyenEx.Checkout.V72.TemporaryServices.t() | nil
        }

  defstruct [:airline, :carRental, :healthcare, :levelTwoThree, :lodging, :temporaryServices]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {AdyenEx.Checkout.V72.Airline, :t},
      carRental: {AdyenEx.Checkout.V72.CarRental, :t},
      healthcare: {AdyenEx.Checkout.V72.Healthcare, :t},
      levelTwoThree: {AdyenEx.Checkout.V72.LevelTwoThree, :t},
      lodging: {AdyenEx.Checkout.V72.Lodging, :t},
      temporaryServices: {AdyenEx.Checkout.V72.TemporaryServices, :t}
    ]
  end
end
