defmodule AdyenEx.RaiseDisputes.V2.DisputeRequest do
  @moduledoc """
  Provides struct and type for a DisputeRequest
  """

  @type t :: %__MODULE__{
          cancelledInfo: AdyenEx.RaiseDisputes.V2.CancelledInfo.t() | nil,
          description: String.t() | nil,
          disputedAmount: AdyenEx.RaiseDisputes.V2.Amount.t() | nil,
          duplicateInfo: AdyenEx.RaiseDisputes.V2.DuplicateInfo.t() | nil,
          fraudInfo: AdyenEx.RaiseDisputes.V2.FraudInfo.t() | nil,
          notAsDescribedInfo: AdyenEx.RaiseDisputes.V2.NotAsDescribedInfo.t() | nil,
          notDeliveredInfo: AdyenEx.RaiseDisputes.V2.NotDeliveredInfo.t() | nil,
          otherInfo: AdyenEx.RaiseDisputes.V2.OtherInfo.t() | nil,
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
      cancelledInfo: {AdyenEx.RaiseDisputes.V2.CancelledInfo, :t},
      description: :string,
      disputedAmount: {AdyenEx.RaiseDisputes.V2.Amount, :t},
      duplicateInfo: {AdyenEx.RaiseDisputes.V2.DuplicateInfo, :t},
      fraudInfo: {AdyenEx.RaiseDisputes.V2.FraudInfo, :t},
      notAsDescribedInfo: {AdyenEx.RaiseDisputes.V2.NotAsDescribedInfo, :t},
      notDeliveredInfo: {AdyenEx.RaiseDisputes.V2.NotDeliveredInfo, :t},
      otherInfo: {AdyenEx.RaiseDisputes.V2.OtherInfo, :t},
      status: {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
      transactionId: :string,
      type: :string
    ]
  end
end
