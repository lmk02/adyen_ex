defmodule AdyenEx.Checkout.V72.LrsContext do
  @moduledoc """
  Provides struct and type for a LrsContext
  """

  @type t :: %__MODULE__{remittancePurpose: String.t(), sublimitStatus: String.t()}

  defstruct [:remittancePurpose, :sublimitStatus]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      remittancePurpose: {:enum, ["TOUR_PROGRAMME", "TRAVEL_NON_TOUR", "EDUCATION", "DIGITAL"]},
      sublimitStatus: {:enum, ["EXCEEDED", "NOT_EXCEEDED"]}
    ]
  end
end
