defmodule AdyenEx.Transaction.V1.DisputeResponse do
  @moduledoc """
  Provides struct and type for a DisputeResponse
  """

  @type t :: %__MODULE__{
          arn: String.t() | nil,
          description: String.t() | nil,
          disputedAmount: AdyenEx.Transaction.V1.Amount.t() | nil,
          duplicateInfo: AdyenEx.Transaction.V1.DuplicateInfo.t() | nil,
          fraudInfo: AdyenEx.Transaction.V1.FraudInfo.t() | nil,
          id: String.t() | nil,
          notDeliveredInfo: AdyenEx.Transaction.V1.NotDeliveredInfo.t() | nil,
          otherInfo: AdyenEx.Transaction.V1.OtherInfo.t() | nil,
          status: String.t() | nil,
          transactionId: String.t(),
          type: String.t()
        }

  defstruct [
    :arn,
    :description,
    :disputedAmount,
    :duplicateInfo,
    :fraudInfo,
    :id,
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
      description: :string,
      disputedAmount: {AdyenEx.Transaction.V1.Amount, :t},
      duplicateInfo: {AdyenEx.Transaction.V1.DuplicateInfo, :t},
      fraudInfo: {AdyenEx.Transaction.V1.FraudInfo, :t},
      id: :string,
      notDeliveredInfo: {AdyenEx.Transaction.V1.NotDeliveredInfo, :t},
      otherInfo: {AdyenEx.Transaction.V1.OtherInfo, :t},
      status: {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
      transactionId: :string,
      type: :string
    ]
  end
end
