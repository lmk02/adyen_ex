defmodule AdyenEx.RaiseDisputes.V4.DisputeResponse do
  @moduledoc """
  Provides struct and type for a DisputeResponse
  """

  @type t :: %__MODULE__{
          arn: String.t() | nil,
          cancelledInfo: AdyenEx.RaiseDisputes.V4.CancelledInfo.t() | nil,
          description: String.t() | nil,
          disputedAmount: AdyenEx.RaiseDisputes.V4.Amount.t() | nil,
          duplicateInfo: AdyenEx.RaiseDisputes.V4.DuplicateInfo.t() | nil,
          fraudInfo: AdyenEx.RaiseDisputes.V4.FraudInfo.t() | nil,
          id: String.t() | nil,
          notAsDescribedInfo: AdyenEx.RaiseDisputes.V4.NotAsDescribedInfo.t() | nil,
          notDeliveredInfo: AdyenEx.RaiseDisputes.V4.NotDeliveredInfo.t() | nil,
          otherInfo: AdyenEx.RaiseDisputes.V4.OtherInfo.t() | nil,
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
      cancelledInfo: {AdyenEx.RaiseDisputes.V4.CancelledInfo, :t},
      description: :string,
      disputedAmount: {AdyenEx.RaiseDisputes.V4.Amount, :t},
      duplicateInfo: {AdyenEx.RaiseDisputes.V4.DuplicateInfo, :t},
      fraudInfo: {AdyenEx.RaiseDisputes.V4.FraudInfo, :t},
      id: :string,
      notAsDescribedInfo: {AdyenEx.RaiseDisputes.V4.NotAsDescribedInfo, :t},
      notDeliveredInfo: {AdyenEx.RaiseDisputes.V4.NotDeliveredInfo, :t},
      otherInfo: {AdyenEx.RaiseDisputes.V4.OtherInfo, :t},
      status: {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
      transactionId: :string,
      type: :string
    ]
  end
end
