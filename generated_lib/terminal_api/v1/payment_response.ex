defmodule AdyenEx.TerminalAPI.V1.PaymentResponse do
  @moduledoc """
  Provides struct and type for a PaymentResponse
  """

  @type t :: %__MODULE__{
          LoyaltyResult: [AdyenEx.TerminalAPI.V1.LoyaltyResult.t()] | nil,
          POIData: AdyenEx.TerminalAPI.V1.POIData.t(),
          PaymentReceipt: [AdyenEx.TerminalAPI.V1.PaymentReceipt.t()] | nil,
          PaymentResult: AdyenEx.TerminalAPI.V1.PaymentResult.t() | nil,
          Response: AdyenEx.TerminalAPI.V1.Response.t(),
          SaleData: AdyenEx.TerminalAPI.V1.SaleData.t()
        }

  defstruct [:LoyaltyResult, :POIData, :PaymentReceipt, :PaymentResult, :Response, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyResult: [{AdyenEx.TerminalAPI.V1.LoyaltyResult, :t}],
      POIData: {AdyenEx.TerminalAPI.V1.POIData, :t},
      PaymentReceipt: [{AdyenEx.TerminalAPI.V1.PaymentReceipt, :t}],
      PaymentResult: {AdyenEx.TerminalAPI.V1.PaymentResult, :t},
      Response: {AdyenEx.TerminalAPI.V1.Response, :t},
      SaleData: {AdyenEx.TerminalAPI.V1.SaleData, :t}
    ]
  end
end
