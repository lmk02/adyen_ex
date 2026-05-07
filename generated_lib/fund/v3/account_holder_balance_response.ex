defmodule AdyenEx.Fund.V3.AccountHolderBalanceResponse do
  @moduledoc """
  Provides struct and type for a AccountHolderBalanceResponse
  """

  @type t :: %__MODULE__{
          balancePerAccount: [AdyenEx.Fund.V3.AccountDetailBalanceWrapper.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil,
          totalBalance: AdyenEx.Fund.V3.DetailBalance.t() | nil
        }

  defstruct [:balancePerAccount, :pspReference, :resultCode, :submittedAsync, :totalBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePerAccount: [{AdyenEx.Fund.V3.AccountDetailBalanceWrapper, :t}],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean,
      totalBalance: {AdyenEx.Fund.V3.DetailBalance, :t}
    ]
  end
end
