defmodule AdyenEx.Payment.V46.ThreeDs2ResultResponse do
  @moduledoc """
  Provides struct and type for a ThreeDs2ResultResponse
  """

  @type t :: %__MODULE__{threeDS2Result: AdyenEx.Payment.V46.ThreeDs2Result.t() | nil}

  defstruct [:threeDS2Result]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [threeDS2Result: {AdyenEx.Payment.V46.ThreeDs2Result, :t}]
  end
end
