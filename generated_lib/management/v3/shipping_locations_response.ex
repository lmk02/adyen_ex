defmodule AdyenEx.Management.V3.ShippingLocationsResponse do
  @moduledoc """
  Provides struct and type for a ShippingLocationsResponse
  """

  @type t :: %__MODULE__{data: [AdyenEx.Management.V3.ShippingLocation.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{AdyenEx.Management.V3.ShippingLocation, :t}]]
  end
end
