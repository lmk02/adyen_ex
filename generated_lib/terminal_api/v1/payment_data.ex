defmodule AdyenEx.TerminalAPI.V1.PaymentData do
  @moduledoc """
  Provides struct and type for a PaymentData
  """

  @type t :: %__MODULE__{
          CardAcquisitionReference: AdyenEx.TerminalAPI.V1.TransactionIDType.t() | nil,
          Instalment: AdyenEx.TerminalAPI.V1.Instalment.t() | nil,
          PaymentInstrumentData: AdyenEx.TerminalAPI.V1.PaymentInstrumentData.t() | nil,
          PaymentType: String.t() | nil,
          RequestedValidityDate: Date.t() | nil,
          SplitPaymentFlag: boolean | nil
        }

  defstruct [
    :CardAcquisitionReference,
    :Instalment,
    :PaymentInstrumentData,
    :PaymentType,
    :RequestedValidityDate,
    :SplitPaymentFlag
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardAcquisitionReference: {AdyenEx.TerminalAPI.V1.TransactionIDType, :t},
      Instalment: {AdyenEx.TerminalAPI.V1.Instalment, :t},
      PaymentInstrumentData: {AdyenEx.TerminalAPI.V1.PaymentInstrumentData, :t},
      PaymentType:
        {:enum,
         [
           "Normal",
           "Refund",
           "OneTimeReservation",
           "FirstReservation",
           "UpdateReservation",
           "Completion",
           "CashAdvance",
           "CashDeposit",
           "Recurring",
           "Instalment",
           "IssuerInstalment",
           "PaidOut"
         ]},
      RequestedValidityDate: {:string, "date"},
      SplitPaymentFlag: :boolean
    ]
  end
end
