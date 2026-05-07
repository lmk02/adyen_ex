defmodule AdyenEx.BalancePlatform.V2.UpdateSweepConfigurationV2 do
  @moduledoc """
  Provides struct and type for a UpdateSweepConfigurationV2
  """

  @type t :: %__MODULE__{
          category: String.t() | nil,
          counterparty: AdyenEx.BalancePlatform.V2.SweepCounterparty.t() | nil,
          currency: String.t() | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          priorities: [String.t()] | nil,
          reason: String.t() | nil,
          reasonDetail: String.t() | nil,
          reference: String.t() | nil,
          referenceForBeneficiary: String.t() | nil,
          schedule: AdyenEx.BalancePlatform.V2.SweepSchedule.t() | nil,
          status: String.t() | nil,
          sweepAmount: AdyenEx.BalancePlatform.V2.Amount.t() | nil,
          targetAmount: AdyenEx.BalancePlatform.V2.Amount.t() | nil,
          triggerAmount: AdyenEx.BalancePlatform.V2.Amount.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :category,
    :counterparty,
    :currency,
    :description,
    :id,
    :priorities,
    :reason,
    :reasonDetail,
    :reference,
    :referenceForBeneficiary,
    :schedule,
    :status,
    :sweepAmount,
    :targetAmount,
    :triggerAmount,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      category: {:enum, ["bank", "internal", "platformPayment"]},
      counterparty: {AdyenEx.BalancePlatform.V2.SweepCounterparty, :t},
      currency: :string,
      description: :string,
      id: :string,
      priorities: [enum: ["crossBorder", "fast", "instant", "internal", "regular", "wire"]],
      reason:
        {:enum,
         [
           "accountHierarchyNotActive",
           "amountLimitExceeded",
           "approved",
           "counterpartyAccountBlocked",
           "counterpartyAccountClosed",
           "counterpartyAccountNotFound",
           "counterpartyAddressRequired",
           "counterpartyBankTimedOut",
           "counterpartyBankUnavailable",
           "directDebitNotSupported",
           "error",
           "notEnoughBalance",
           "refusedByCounterpartyBank",
           "routeNotFound",
           "transferInstrumentDoesNotExist",
           "unknown"
         ]},
      reasonDetail: :string,
      reference: :string,
      referenceForBeneficiary: :string,
      schedule: {AdyenEx.BalancePlatform.V2.SweepSchedule, :t},
      status: {:enum, ["active", "inactive"]},
      sweepAmount: {AdyenEx.BalancePlatform.V2.Amount, :t},
      targetAmount: {AdyenEx.BalancePlatform.V2.Amount, :t},
      triggerAmount: {AdyenEx.BalancePlatform.V2.Amount, :t},
      type: {:enum, ["pull", "push"]}
    ]
  end
end
