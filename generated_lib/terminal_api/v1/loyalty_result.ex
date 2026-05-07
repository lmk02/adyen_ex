defmodule AdyenEx.TerminalAPI.V1.LoyaltyResult do
  @moduledoc """
  Provides struct and type for a LoyaltyResult
  """

  @type t :: %__MODULE__{
          CurrentBalance: number | nil,
          LoyaltyAccount: AdyenEx.TerminalAPI.V1.LoyaltyAccount.t(),
          LoyaltyAcquirerData: AdyenEx.TerminalAPI.V1.LoyaltyAcquirerData.t() | nil
        }

  defstruct [:CurrentBalance, :LoyaltyAccount, :LoyaltyAcquirerData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CurrentBalance: :number,
      LoyaltyAccount: {AdyenEx.TerminalAPI.V1.LoyaltyAccount, :t},
      LoyaltyAcquirerData: {AdyenEx.TerminalAPI.V1.LoyaltyAcquirerData, :t}
    ]
  end
end
