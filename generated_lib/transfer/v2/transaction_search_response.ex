defmodule AdyenEx.Transfer.V2.TransactionSearchResponse do
  @moduledoc """
  Provides struct and type for a TransactionSearchResponse
  """

  @type t :: %__MODULE__{
          _links: AdyenEx.Transfer.V2.Links.t() | nil,
          data: [AdyenEx.Transfer.V2.Transaction.t()] | nil
        }

  defstruct [:_links, :data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [_links: {AdyenEx.Transfer.V2.Links, :t}, data: [{AdyenEx.Transfer.V2.Transaction, :t}]]
  end
end
