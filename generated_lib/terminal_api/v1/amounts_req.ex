defmodule AdyenEx.TerminalAPI.V1.AmountsReq do
  @moduledoc """
  Provides struct and type for a AmountsReq
  """

  @type t :: %__MODULE__{
          CashBackAmount: number | nil,
          Currency: String.t(),
          MaximumCashBackAmount: number | nil,
          MinimumAmountToDeliver: number | nil,
          MinimumSplitAmount: number | nil,
          PaidAmount: number | nil,
          RequestedAmount: number,
          TipAmount: number | nil
        }

  defstruct [
    :CashBackAmount,
    :Currency,
    :MaximumCashBackAmount,
    :MinimumAmountToDeliver,
    :MinimumSplitAmount,
    :PaidAmount,
    :RequestedAmount,
    :TipAmount
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CashBackAmount: {:number, "double"},
      Currency: :string,
      MaximumCashBackAmount: {:number, "double"},
      MinimumAmountToDeliver: {:number, "double"},
      MinimumSplitAmount: {:number, "double"},
      PaidAmount: {:number, "double"},
      RequestedAmount: {:number, "double"},
      TipAmount: {:number, "double"}
    ]
  end
end
