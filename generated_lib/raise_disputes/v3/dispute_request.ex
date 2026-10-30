defmodule AdyenEx.RaiseDisputes.V3.DisputeRequest do
  @moduledoc """
  Provides struct and type for a DisputeRequest
  """

  @type t :: %__MODULE__{
          cancelledInfo: AdyenEx.RaiseDisputes.V3.CancelledInfo.t() | nil,
          description: String.t() | nil,
          disputedAmount: AdyenEx.RaiseDisputes.V3.Amount.t() | nil,
          duplicateInfo: AdyenEx.RaiseDisputes.V3.DuplicateInfo.t() | nil,
          fraudInfo: AdyenEx.RaiseDisputes.V3.FraudInfo.t() | nil,
          notAsDescribedInfo: AdyenEx.RaiseDisputes.V3.NotAsDescribedInfo.t() | nil,
          notDeliveredInfo: AdyenEx.RaiseDisputes.V3.NotDeliveredInfo.t() | nil,
          otherInfo: AdyenEx.RaiseDisputes.V3.OtherInfo.t() | nil,
          status: String.t() | nil,
          transactionId: String.t(),
          type: String.t()
        }

  defstruct [
    :cancelledInfo,
    :description,
    :disputedAmount,
    :duplicateInfo,
    :fraudInfo,
    :notAsDescribedInfo,
    :notDeliveredInfo,
    :otherInfo,
    :status,
    :transactionId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cancelledInfo: {AdyenEx.RaiseDisputes.V3.CancelledInfo, :t},
      description: :string,
      disputedAmount: {AdyenEx.RaiseDisputes.V3.Amount, :t},
      duplicateInfo: {AdyenEx.RaiseDisputes.V3.DuplicateInfo, :t},
      fraudInfo: {AdyenEx.RaiseDisputes.V3.FraudInfo, :t},
      notAsDescribedInfo: {AdyenEx.RaiseDisputes.V3.NotAsDescribedInfo, :t},
      notDeliveredInfo: {AdyenEx.RaiseDisputes.V3.NotDeliveredInfo, :t},
      otherInfo: {AdyenEx.RaiseDisputes.V3.OtherInfo, :t},
      status: {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
      transactionId: :string,
      type: :string
    ]
  end
end
