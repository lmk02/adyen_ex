defmodule AdyenEx.BalancePlatform.V2.PayoutScheduleExecutions do
  @moduledoc """
  Provides struct and type for a PayoutScheduleExecutions
  """

  @type t :: %__MODULE__{
          payoutScheduleExecutions: [AdyenEx.BalancePlatform.V2.PayoutScheduleExecution.t()]
        }

  defstruct [:payoutScheduleExecutions]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [payoutScheduleExecutions: [{AdyenEx.BalancePlatform.V2.PayoutScheduleExecution, :t}]]
  end
end
