defmodule AdyenEx.Fund.V3.AccountDetailBalance do
  @moduledoc """
  Provides struct and type for a AccountDetailBalance
  """

  @type t :: %__MODULE__{
          accountCode: String.t() | nil,
          detailBalance: AdyenEx.Fund.V3.DetailBalance.t() | nil
        }

  defstruct [:accountCode, :detailBalance]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountCode: :string, detailBalance: {AdyenEx.Fund.V3.DetailBalance, :t}]
  end
end
