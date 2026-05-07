defmodule AdyenEx.Transaction.V4.DisputeRequest do
  @moduledoc """
  Provides struct and type for a DisputeRequest
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          disputedAmount: AdyenEx.Transaction.V4.Amount.t() | nil,
          duplicateInfo: AdyenEx.Transaction.V4.DuplicateInfo.t() | nil,
          fraudInfo: AdyenEx.Transaction.V4.FraudInfo.t() | nil,
          notDeliveredInfo: AdyenEx.Transaction.V4.NotDeliveredInfo.t() | nil,
          otherInfo: AdyenEx.Transaction.V4.OtherInfo.t() | nil,
          status: String.t() | nil,
          transactionId: String.t(),
          type: String.t()
        }

  defstruct [
    :description,
    :disputedAmount,
    :duplicateInfo,
    :fraudInfo,
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
      description: :string,
      disputedAmount: {AdyenEx.Transaction.V4.Amount, :t},
      duplicateInfo: {AdyenEx.Transaction.V4.DuplicateInfo, :t},
      fraudInfo: {AdyenEx.Transaction.V4.FraudInfo, :t},
      notDeliveredInfo: {AdyenEx.Transaction.V4.NotDeliveredInfo, :t},
      otherInfo: {AdyenEx.Transaction.V4.OtherInfo, :t},
      status: {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
      transactionId: :string,
      type: :string
    ]
  end
end
