defmodule AdyenEx.Fund.V5.AccountHolderTransactionListResponse do
  @moduledoc """
  Provides struct and type for a AccountHolderTransactionListResponse
  """

  @type t :: %__MODULE__{
          accountTransactionLists: [AdyenEx.Fund.V5.AccountTransactionList.t()] | nil,
          invalidFields: [AdyenEx.Fund.V5.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:accountTransactionLists, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountTransactionLists: [{AdyenEx.Fund.V5.AccountTransactionList, :t}],
      invalidFields: [{AdyenEx.Fund.V5.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
