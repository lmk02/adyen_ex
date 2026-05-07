defmodule AdyenEx.Fund.V5.DebitAccountHolderRequest do
  @moduledoc """
  Provides struct and type for a DebitAccountHolderRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          amount: AdyenEx.Fund.V5.Amount.t(),
          bankAccountUUID: String.t(),
          description: String.t() | nil,
          merchantAccount: String.t(),
          splits: [AdyenEx.Fund.V5.Split.t()]
        }

  defstruct [
    :accountHolderCode,
    :amount,
    :bankAccountUUID,
    :description,
    :merchantAccount,
    :splits
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      amount: {AdyenEx.Fund.V5.Amount, :t},
      bankAccountUUID: :string,
      description: :string,
      merchantAccount: :string,
      splits: [{AdyenEx.Fund.V5.Split, :t}]
    ]
  end
end
