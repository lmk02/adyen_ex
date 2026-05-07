defmodule AdyenEx.Fund.V5.DetailBalance do
  @moduledoc """
  Provides struct and type for a DetailBalance
  """

  @type t :: %__MODULE__{
          balance: [AdyenEx.Fund.V5.Amount.t()] | nil,
          onHoldBalance: [AdyenEx.Fund.V5.Amount.t()] | nil,
          pendingBalance: [AdyenEx.Fund.V5.Amount.t()] | nil
        }

  defstruct [:balance, :onHoldBalance, :pendingBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balance: [{AdyenEx.Fund.V5.Amount, :t}],
      onHoldBalance: [{AdyenEx.Fund.V5.Amount, :t}],
      pendingBalance: [{AdyenEx.Fund.V5.Amount, :t}]
    ]
  end
end
