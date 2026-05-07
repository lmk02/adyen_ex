defmodule AdyenEx.Checkout.V71.Airline do
  @moduledoc """
  Provides struct and type for a Airline
  """

  @type t :: %__MODULE__{
          agency: AdyenEx.Checkout.V71.Agency.t() | nil,
          boardingFee: integer | nil,
          code: String.t() | nil,
          computerizedReservationSystem: String.t() | nil,
          customerReferenceNumber: String.t() | nil,
          designatorCode: String.t() | nil,
          documentType: String.t() | nil,
          flightDate: DateTime.t() | nil,
          legs: [AdyenEx.Checkout.V71.Leg.t()] | nil,
          passengerName: String.t(),
          passengers: [AdyenEx.Checkout.V71.Passenger.t()] | nil,
          ticket: AdyenEx.Checkout.V71.Ticket.t() | nil,
          travelAgency: AdyenEx.Checkout.V71.TravelAgency.t() | nil
        }

  defstruct [
    :agency,
    :boardingFee,
    :code,
    :computerizedReservationSystem,
    :customerReferenceNumber,
    :designatorCode,
    :documentType,
    :flightDate,
    :legs,
    :passengerName,
    :passengers,
    :ticket,
    :travelAgency
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agency: {AdyenEx.Checkout.V71.Agency, :t},
      boardingFee: {:integer, "int64"},
      code: :string,
      computerizedReservationSystem: :string,
      customerReferenceNumber: :string,
      designatorCode: :string,
      documentType: :string,
      flightDate: {:string, "date-time"},
      legs: [{AdyenEx.Checkout.V71.Leg, :t}],
      passengerName: :string,
      passengers: [{AdyenEx.Checkout.V71.Passenger, :t}],
      ticket: {AdyenEx.Checkout.V71.Ticket, :t},
      travelAgency: {AdyenEx.Checkout.V71.TravelAgency, :t}
    ]
  end
end
