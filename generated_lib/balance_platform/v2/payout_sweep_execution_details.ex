defmodule AdyenEx.BalancePlatform.V2.PayoutSweepExecutionDetails do
  @moduledoc """
  Provides struct and type for a PayoutSweepExecutionDetails
  """

  @type t :: %__MODULE__{
          reason: String.t() | nil,
          reasonCode: String.t() | nil,
          sweepConfigurationDisabled: boolean | nil,
          transferId: String.t() | nil
        }

  defstruct [:reason, :reasonCode, :sweepConfigurationDisabled, :transferId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      reason: :string,
      reasonCode: :string,
      sweepConfigurationDisabled: :boolean,
      transferId: :string
    ]
  end
end
