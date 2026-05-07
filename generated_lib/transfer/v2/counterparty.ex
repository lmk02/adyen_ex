defmodule AdyenEx.Transfer.V2.Counterparty do
  @moduledoc """
  Provides struct and type for a Counterparty
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          bankAccount: AdyenEx.Transfer.V2.BankAccountInfo.t() | nil,
          merchant: AdyenEx.Transfer.V2.MerchantData.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :bankAccount, :merchant, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {AdyenEx.Transfer.V2.BankAccountInfo, :t},
      merchant: {AdyenEx.Transfer.V2.MerchantData, :t},
      transferInstrumentId: :string
    ]
  end
end
