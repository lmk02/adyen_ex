defmodule AdyenEx.BalancePlatform.V2.PatchableCreateRecurringTopUp do
  @moduledoc """
  Provides struct and type for a PatchableCreateRecurringTopUp
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          status: String.t() | nil,
          topUpAmount: AdyenEx.BalancePlatform.V2.PatchableTopUpAmount.t() | nil,
          trigger: AdyenEx.BalancePlatform.V2.PatchableTrigger.t() | nil
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
      topUpAmount: {AdyenEx.BalancePlatform.V2.PatchableTopUpAmount, :t},
      trigger: {AdyenEx.BalancePlatform.V2.PatchableTrigger, :t}
    ]
  end
end
