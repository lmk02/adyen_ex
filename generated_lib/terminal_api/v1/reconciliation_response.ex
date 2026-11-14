defmodule AdyenEx.TerminalAPI.V1.ReconciliationResponse do
  @moduledoc """
  Provides struct and type for a ReconciliationResponse
  """

  @type t :: %__MODULE__{
          POIReconciliationID: String.t() | nil,
          ReconciliationType: String.t(),
          Response: AdyenEx.TerminalAPI.V1.Response.t(),
          TransactionTotals: [AdyenEx.TerminalAPI.V1.TransactionTotals.t()] | nil
        }

  defstruct [:POIReconciliationID, :ReconciliationType, :Response, :TransactionTotals]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      POIReconciliationID: :string,
      ReconciliationType:
        {:enum,
         [
           "SaleReconciliation",
           "AcquirerSynchronisation",
           "AcquirerReconciliation",
           "PreviousReconciliation"
         ]},
      Response: {AdyenEx.TerminalAPI.V1.Response, :t},
      TransactionTotals: [{AdyenEx.TerminalAPI.V1.TransactionTotals, :t}]
    ]
  end
end
