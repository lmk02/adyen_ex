defmodule AdyenEx.BalancePlatform.V2.PayoutSweepExecution do
  @moduledoc """
  Provides struct and type for a PayoutSweepExecution
  """

  @type t :: %__MODULE__{
          id: String.t() | nil,
          result: String.t() | nil,
          resultDetails: AdyenEx.BalancePlatform.V2.PayoutSweepExecutionDetails.t() | nil,
          triggeredAt: DateTime.t() | nil
        }

  defstruct [:id, :result, :resultDetails, :triggeredAt]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      result: {:enum, ["failed", "succeeded", "skipped"]},
      resultDetails: {AdyenEx.BalancePlatform.V2.PayoutSweepExecutionDetails, :t},
      triggeredAt: {:string, "date-time"}
    ]
  end
end
