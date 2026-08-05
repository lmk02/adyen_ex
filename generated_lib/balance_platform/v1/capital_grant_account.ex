defmodule AdyenEx.BalancePlatform.V1.CapitalGrantAccount do
  @moduledoc """
  Provides struct and type for a CapitalGrantAccount
  """

  @type t :: %__MODULE__{
          balances: [AdyenEx.BalancePlatform.V1.CapitalBalanceWrapper.t()] | nil,
          fundingBalanceAccountId: String.t() | nil,
          id: String.t() | nil,
          limits: [AdyenEx.BalancePlatform.V1.GrantLimitWrapper.t()] | nil
        }

  defstruct [:balances, :fundingBalanceAccountId, :id, :limits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balances: [{AdyenEx.BalancePlatform.V1.CapitalBalanceWrapper, :t}],
      fundingBalanceAccountId: :string,
      id: :string,
      limits: [{AdyenEx.BalancePlatform.V1.GrantLimitWrapper, :t}]
    ]
  end
end
