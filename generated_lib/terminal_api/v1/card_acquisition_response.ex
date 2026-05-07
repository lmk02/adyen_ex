defmodule AdyenEx.TerminalAPI.V1.CardAcquisitionResponse do
  @moduledoc """
  Provides struct and type for a CardAcquisitionResponse
  """

  @type t :: %__MODULE__{
          LoyaltyAccount: [AdyenEx.TerminalAPI.V1.LoyaltyAccount.t()] | nil,
          POIData: AdyenEx.TerminalAPI.V1.POIData.t(),
          PaymentBrand: [String.t()] | nil,
          PaymentInstrumentData: AdyenEx.TerminalAPI.V1.PaymentInstrumentData.t() | nil,
          Response: AdyenEx.TerminalAPI.V1.Response.t(),
          SaleData: AdyenEx.TerminalAPI.V1.SaleData.t()
        }

  defstruct [
    :LoyaltyAccount,
    :POIData,
    :PaymentBrand,
    :PaymentInstrumentData,
    :Response,
    :SaleData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyAccount: [{AdyenEx.TerminalAPI.V1.LoyaltyAccount, :t}],
      POIData: {AdyenEx.TerminalAPI.V1.POIData, :t},
      PaymentBrand: [:string],
      PaymentInstrumentData: {AdyenEx.TerminalAPI.V1.PaymentInstrumentData, :t},
      Response: {AdyenEx.TerminalAPI.V1.Response, :t},
      SaleData: {AdyenEx.TerminalAPI.V1.SaleData, :t}
    ]
  end
end
