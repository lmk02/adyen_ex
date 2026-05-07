defmodule AdyenEx.Transaction.V3.PatchableDisputeRequest do
  @moduledoc """
  Provides struct and type for a PatchableDisputeRequest
  """

  @type t :: %__MODULE__{
          duplicateInfo: AdyenEx.Transaction.V3.PatchableDuplicateInfo.t() | nil,
          fraudInfo: AdyenEx.Transaction.V3.PatchableFraudInfo.t() | nil,
          notDeliveredInfo: AdyenEx.Transaction.V3.PatchableNotDeliveredInfo.t() | nil,
          otherInfo: AdyenEx.Transaction.V3.PatchableOtherInfo.t() | nil,
          status: String.t() | nil
        }

  defstruct [:duplicateInfo, :fraudInfo, :notDeliveredInfo, :otherInfo, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      duplicateInfo: {:union, [{AdyenEx.Transaction.V3.PatchableDuplicateInfo, :t}, :null]},
      fraudInfo: {:union, [{AdyenEx.Transaction.V3.PatchableFraudInfo, :t}, :null]},
      notDeliveredInfo: {:union, [{AdyenEx.Transaction.V3.PatchableNotDeliveredInfo, :t}, :null]},
      otherInfo: {:union, [{AdyenEx.Transaction.V3.PatchableOtherInfo, :t}, :null]},
      status:
        {:union,
         [
           {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
           :null
         ]}
    ]
  end
end
