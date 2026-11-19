defmodule AdyenEx.BalancePlatform.V2.TriggerUpdate do
  @moduledoc """
  Provides struct and type for a TriggerUpdate
  """

  @type t :: %__MODULE__{
          schedule: AdyenEx.BalancePlatform.V2.ScheduleUpdate.t() | nil,
          threshold: AdyenEx.BalancePlatform.V2.AmountUpdate.t() | nil
        }

  defstruct [:schedule, :threshold]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      schedule: {:union, [{AdyenEx.BalancePlatform.V2.ScheduleUpdate, :t}, :null]},
      threshold: {AdyenEx.BalancePlatform.V2.AmountUpdate, :t}
    ]
  end
end
