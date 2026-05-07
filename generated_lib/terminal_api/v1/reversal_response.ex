defmodule AdyenEx.TerminalAPI.V1.ReversalResponse do
  @moduledoc """
  Provides struct and type for a ReversalResponse
  """

  @type t :: %__MODULE__{
          OriginalPOITransaction: AdyenEx.TerminalAPI.V1.OriginalPOITransaction.t() | nil,
          POIData: AdyenEx.TerminalAPI.V1.POIData.t() | nil,
          PaymentReceipt: [AdyenEx.TerminalAPI.V1.PaymentReceipt.t()] | nil,
          Response: AdyenEx.TerminalAPI.V1.Response.t(),
          ReversedAmount: number | nil
        }

  defstruct [:OriginalPOITransaction, :POIData, :PaymentReceipt, :Response, :ReversedAmount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      OriginalPOITransaction: {AdyenEx.TerminalAPI.V1.OriginalPOITransaction, :t},
      POIData: {AdyenEx.TerminalAPI.V1.POIData, :t},
      PaymentReceipt: [{AdyenEx.TerminalAPI.V1.PaymentReceipt, :t}],
      Response: {AdyenEx.TerminalAPI.V1.Response, :t},
      ReversedAmount: :number
    ]
  end
end
