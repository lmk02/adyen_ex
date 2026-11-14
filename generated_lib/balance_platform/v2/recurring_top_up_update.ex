defmodule AdyenEx.BalancePlatform.V2.RecurringTopUpUpdate do
  @moduledoc """
  Provides struct and type for a RecurringTopUpUpdate
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          status: String.t() | nil,
          topUpAmount: AdyenEx.BalancePlatform.V2.TopUpAmountUpdate.t() | nil,
          trigger: AdyenEx.BalancePlatform.V2.TriggerUpdate.t() | nil
        }

  defstruct [:description, :referenceForBeneficiary, :status, :topUpAmount, :trigger]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      referenceForBeneficiary: {:union, [:string, :null]},
      status: {:enum, ["active", "inactive"]},
      topUpAmount: {AdyenEx.BalancePlatform.V2.TopUpAmountUpdate, :t},
      trigger: {AdyenEx.BalancePlatform.V2.TriggerUpdate, :t}
    ]
  end
end
