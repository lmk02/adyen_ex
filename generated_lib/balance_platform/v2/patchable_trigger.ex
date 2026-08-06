defmodule AdyenEx.BalancePlatform.V2.PatchableTrigger do
  @moduledoc """
  Provides struct and type for a PatchableTrigger
  """

  @type t :: %__MODULE__{
          schedule: AdyenEx.BalancePlatform.V2.PatchableSchedule.t() | nil,
          threshold: AdyenEx.BalancePlatform.V2.PatchableAmountDTO.t() | nil
        }

  defstruct [:schedule, :threshold]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      schedule: {:union, [{AdyenEx.BalancePlatform.V2.PatchableSchedule, :t}, :null]},
      threshold: {AdyenEx.BalancePlatform.V2.PatchableAmountDTO, :t}
    ]
  end
end
