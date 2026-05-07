defmodule AdyenEx.TerminalAPI.V1.LoyaltyAccountReq do
  @moduledoc """
  Provides struct and type for a LoyaltyAccountReq
  """

  @type t :: %__MODULE__{
          CardAcquisitionReference: AdyenEx.TerminalAPI.V1.TransactionIDType.t() | nil,
          LoyaltyAccountID: AdyenEx.TerminalAPI.V1.LoyaltyAccountID.t() | nil
        }

  defstruct [:CardAcquisitionReference, :LoyaltyAccountID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardAcquisitionReference: {AdyenEx.TerminalAPI.V1.TransactionIDType, :t},
      LoyaltyAccountID: {AdyenEx.TerminalAPI.V1.LoyaltyAccountID, :t}
    ]
  end
end
