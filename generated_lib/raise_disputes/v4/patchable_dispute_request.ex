defmodule AdyenEx.RaiseDisputes.V4.PatchableDisputeRequest do
  @moduledoc """
  Provides struct and type for a PatchableDisputeRequest
  """

  @type t :: %__MODULE__{
          cancelledInfo: AdyenEx.RaiseDisputes.V4.CancelledInfoUpdate.t() | nil,
          duplicateInfo: AdyenEx.RaiseDisputes.V4.PatchableDuplicateInfo.t() | nil,
          fraudInfo: AdyenEx.RaiseDisputes.V4.PatchableFraudInfo.t() | nil,
          notAsDescribedInfo: AdyenEx.RaiseDisputes.V4.NotAsDescribedInfoUpdate.t() | nil,
          notDeliveredInfo: AdyenEx.RaiseDisputes.V4.PatchableNotDeliveredInfo.t() | nil,
          otherInfo: AdyenEx.RaiseDisputes.V4.PatchableOtherInfo.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :cancelledInfo,
    :duplicateInfo,
    :fraudInfo,
    :notAsDescribedInfo,
    :notDeliveredInfo,
    :otherInfo,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cancelledInfo: {:union, [{AdyenEx.RaiseDisputes.V4.CancelledInfoUpdate, :t}, :null]},
      duplicateInfo: {:union, [{AdyenEx.RaiseDisputes.V4.PatchableDuplicateInfo, :t}, :null]},
      fraudInfo: {:union, [{AdyenEx.RaiseDisputes.V4.PatchableFraudInfo, :t}, :null]},
      notAsDescribedInfo:
        {:union, [{AdyenEx.RaiseDisputes.V4.NotAsDescribedInfoUpdate, :t}, :null]},
      notDeliveredInfo:
        {:union, [{AdyenEx.RaiseDisputes.V4.PatchableNotDeliveredInfo, :t}, :null]},
      otherInfo: {:union, [{AdyenEx.RaiseDisputes.V4.PatchableOtherInfo, :t}, :null]},
      status:
        {:union,
         [
           {:enum, ["draft", "submitted", "chargeback", "secondPresentment", "won", "closed"]},
           :null
         ]}
    ]
  end
end
