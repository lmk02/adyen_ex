defmodule AdyenEx.TerminalAPI.V1.ReconciliationRequest do
  @moduledoc """
  Provides struct and type for a ReconciliationRequest
  """

  @type t :: %__MODULE__{
          AcquirerID: [String.t()] | nil,
          POIReconciliationID: String.t() | nil,
          ReconciliationType: String.t()
        }

  defstruct [:AcquirerID, :POIReconciliationID, :ReconciliationType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AcquirerID: [:string],
      POIReconciliationID: :string,
      ReconciliationType:
        {:enum,
         [
           "SaleReconciliation",
           "AcquirerSynchronisation",
           "AcquirerReconciliation",
           "PreviousReconciliation"
         ]}
    ]
  end
end
