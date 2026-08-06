defmodule AdyenEx.RaiseDisputes.V1.PatchableDisputeRequest do
  @moduledoc """
  Provides struct and type for a PatchableDisputeRequest
  """

  @type t :: %__MODULE__{
          duplicateInfo: AdyenEx.RaiseDisputes.V1.PatchableDuplicateInfo.t() | nil,
          fraudInfo: AdyenEx.RaiseDisputes.V1.PatchableFraudInfo.t() | nil,
          notDeliveredInfo: AdyenEx.RaiseDisputes.V1.PatchableNotDeliveredInfo.t() | nil,
          otherInfo: AdyenEx.RaiseDisputes.V1.PatchableOtherInfo.t() | nil,
          status: String.t() | nil
        }

  defstruct [:duplicateInfo, :fraudInfo, :notDeliveredInfo, :otherInfo, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      duplicateInfo: {:union, [{AdyenEx.RaiseDisputes.V1.PatchableDuplicateInfo, :t}, :null]},
      fraudInfo: {:union, [{AdyenEx.RaiseDisputes.V1.PatchableFraudInfo, :t}, :null]},
      notDeliveredInfo:
        {:union, [{AdyenEx.RaiseDisputes.V1.PatchableNotDeliveredInfo, :t}, :null]},
      otherInfo: {:union, [{AdyenEx.RaiseDisputes.V1.PatchableOtherInfo, :t}, :null]},
      status:
        {:union,
         [
           {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
           :null
         ]}
    ]
  end
end
