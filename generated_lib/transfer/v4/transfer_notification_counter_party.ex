defmodule AdyenEx.Transfer.V4.TransferNotificationCounterParty do
  @moduledoc """
  Provides struct and type for a TransferNotificationCounterParty
  """

  @type t :: %__MODULE__{
          balanceAccountId: String.t() | nil,
          bankAccount: AdyenEx.Transfer.V4.BankAccountV3.t() | nil,
          card: AdyenEx.Transfer.V4.Card.t() | nil,
          merchant: AdyenEx.Transfer.V4.TransferNotificationMerchantData.t() | nil,
          transferInstrumentId: String.t() | nil
        }

  defstruct [:balanceAccountId, :bankAccount, :card, :merchant, :transferInstrumentId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balanceAccountId: :string,
      bankAccount: {AdyenEx.Transfer.V4.BankAccountV3, :t},
      card: {AdyenEx.Transfer.V4.Card, :t},
      merchant: {AdyenEx.Transfer.V4.TransferNotificationMerchantData, :t},
      transferInstrumentId: :string
    ]
  end
end
