defmodule AdyenEx.BalancePlatform.V2.PayoutSweepExecutions do
  @moduledoc """
  Provides struct and type for a PayoutSweepExecutions
  """

  @type t :: %__MODULE__{
          link: AdyenEx.BalancePlatform.V2.Link.t(),
          sweepExecutions: [AdyenEx.BalancePlatform.V2.PayoutSweepExecution.t()]
        }

  defstruct [:link, :sweepExecutions]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      link: {AdyenEx.BalancePlatform.V2.Link, :t},
      sweepExecutions: [{AdyenEx.BalancePlatform.V2.PayoutSweepExecution, :t}]
    ]
  end
end
