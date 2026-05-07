defmodule AdyenEx.Fund.V6.AccountHolderBalanceResponse do
  @moduledoc """
  Provides struct and type for a AccountHolderBalanceResponse
  """

  @type t :: %__MODULE__{
          balancePerAccount: [AdyenEx.Fund.V6.AccountDetailBalance.t()] | nil,
          invalidFields: [AdyenEx.Fund.V6.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          totalBalance: AdyenEx.Fund.V6.DetailBalance.t() | nil
        }

  defstruct [:balancePerAccount, :invalidFields, :pspReference, :resultCode, :totalBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePerAccount: [{AdyenEx.Fund.V6.AccountDetailBalance, :t}],
      invalidFields: [{AdyenEx.Fund.V6.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string,
      totalBalance: {AdyenEx.Fund.V6.DetailBalance, :t}
    ]
  end
end
