defmodule AdyenEx.TerminalAPI.V1.BalanceInquiryResponse do
  @moduledoc """
  Provides struct and type for a BalanceInquiryResponse
  """

  @type t :: %__MODULE__{
          PaymentAccountStatus: AdyenEx.TerminalAPI.V1.PaymentAccountStatus.t() | nil,
          PaymentReceipt: [AdyenEx.TerminalAPI.V1.PaymentReceipt.t()] | nil,
          Response: AdyenEx.TerminalAPI.V1.Response.t()
        }

  defstruct [:PaymentAccountStatus, :PaymentReceipt, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      PaymentAccountStatus: {AdyenEx.TerminalAPI.V1.PaymentAccountStatus, :t},
      PaymentReceipt: [{AdyenEx.TerminalAPI.V1.PaymentReceipt, :t}],
      Response: {AdyenEx.TerminalAPI.V1.Response, :t}
    ]
  end
end
