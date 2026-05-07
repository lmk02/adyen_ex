defmodule AdyenEx.TerminalAPI.V1.PaymentRequest do
  @moduledoc """
  Provides struct and type for a PaymentRequest
  """

  @type t :: %__MODULE__{
          LoyaltyData: [AdyenEx.TerminalAPI.V1.LoyaltyData.t()] | nil,
          PaymentData: AdyenEx.TerminalAPI.V1.PaymentData.t() | nil,
          PaymentTransaction: AdyenEx.TerminalAPI.V1.PaymentTransaction.t(),
          SaleData: AdyenEx.TerminalAPI.V1.SaleData.t()
        }

  defstruct [:LoyaltyData, :PaymentData, :PaymentTransaction, :SaleData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      LoyaltyData: [{AdyenEx.TerminalAPI.V1.LoyaltyData, :t}],
      PaymentData: {AdyenEx.TerminalAPI.V1.PaymentData, :t},
      PaymentTransaction: {AdyenEx.TerminalAPI.V1.PaymentTransaction, :t},
      SaleData: {AdyenEx.TerminalAPI.V1.SaleData, :t}
    ]
  end
end
