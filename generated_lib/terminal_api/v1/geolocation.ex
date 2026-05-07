defmodule AdyenEx.TerminalAPI.V1.Geolocation do
  @moduledoc """
  Provides struct and type for a Geolocation
  """

  @type t :: %__MODULE__{
          GeographicCoordinates: AdyenEx.TerminalAPI.V1.GeographicCoordinates.t() | nil,
          UTMCoordinates: AdyenEx.TerminalAPI.V1.UTMCoordinates.t() | nil
        }

  defstruct [:GeographicCoordinates, :UTMCoordinates]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      GeographicCoordinates: {AdyenEx.TerminalAPI.V1.GeographicCoordinates, :t},
      UTMCoordinates: {AdyenEx.TerminalAPI.V1.UTMCoordinates, :t}
    ]
  end
end
