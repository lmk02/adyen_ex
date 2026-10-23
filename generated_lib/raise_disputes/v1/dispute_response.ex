defmodule AdyenEx.RaiseDisputes.V1.DisputeResponse do
  @moduledoc """
  Provides struct and type for a DisputeResponse
  """

  @type t :: %__MODULE__{
          arn: String.t() | nil,
          cancelledInfo: AdyenEx.RaiseDisputes.V1.CancelledInfo.t() | nil,
          description: String.t() | nil,
          disputedAmount: AdyenEx.RaiseDisputes.V1.Amount.t() | nil,
          duplicateInfo: AdyenEx.RaiseDisputes.V1.DuplicateInfo.t() | nil,
          fraudInfo: AdyenEx.RaiseDisputes.V1.FraudInfo.t() | nil,
          id: String.t() | nil,
          notAsDescribedInfo: AdyenEx.RaiseDisputes.V1.NotAsDescribedInfo.t() | nil,
          notDeliveredInfo: AdyenEx.RaiseDisputes.V1.NotDeliveredInfo.t() | nil,
          otherInfo: AdyenEx.RaiseDisputes.V1.OtherInfo.t() | nil,
          status: String.t() | nil,
          transactionId: String.t(),
          type: String.t()
        }

  defstruct [
    :arn,
    :cancelledInfo,
    :description,
    :disputedAmount,
    :duplicateInfo,
    :fraudInfo,
    :id,
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
      arn: :string,
      cancelledInfo: {AdyenEx.RaiseDisputes.V1.CancelledInfo, :t},
      description: :string,
      disputedAmount: {AdyenEx.RaiseDisputes.V1.Amount, :t},
      duplicateInfo: {AdyenEx.RaiseDisputes.V1.DuplicateInfo, :t},
      fraudInfo: {AdyenEx.RaiseDisputes.V1.FraudInfo, :t},
      id: :string,
      notAsDescribedInfo: {AdyenEx.RaiseDisputes.V1.NotAsDescribedInfo, :t},
      notDeliveredInfo: {AdyenEx.RaiseDisputes.V1.NotDeliveredInfo, :t},
      otherInfo: {AdyenEx.RaiseDisputes.V1.OtherInfo, :t},
      status: {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
      transactionId: :string,
      type: :string
    ]
  end
end
