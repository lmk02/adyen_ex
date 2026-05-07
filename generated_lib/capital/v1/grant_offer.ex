defmodule AdyenEx.Capital.V1.GrantOffer do
  @moduledoc """
  Provides struct and type for a GrantOffer
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t(),
          amount: AdyenEx.Capital.V1.Amount.t() | nil,
          contractType: String.t() | nil,
          expiresAt: DateTime.t() | nil,
          fee: AdyenEx.Capital.V1.GrantOfferFee.t() | nil,
          id: String.t() | nil,
          repayment: AdyenEx.Capital.V1.Repayment.t() | nil,
          startsAt: DateTime.t() | nil
        }

  defstruct [
    :accountHolderId,
    :amount,
    :contractType,
    :expiresAt,
    :fee,
    :id,
    :repayment,
    :startsAt
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      amount: {AdyenEx.Capital.V1.Amount, :t},
      contractType: {:enum, ["cashAdvance", "loan"]},
      expiresAt: {:string, "date-time"},
      fee: {AdyenEx.Capital.V1.GrantOfferFee, :t},
      id: :string,
      repayment: {AdyenEx.Capital.V1.Repayment, :t},
      startsAt: {:string, "date-time"}
    ]
  end
end
