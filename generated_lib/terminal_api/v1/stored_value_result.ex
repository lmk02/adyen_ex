defmodule AdyenEx.TerminalAPI.V1.StoredValueResult do
  @moduledoc """
  Provides struct and type for a StoredValueResult
  """

  @type t :: %__MODULE__{
          Currency: String.t() | nil,
          EanUpc: String.t() | nil,
          HostTransactionID: AdyenEx.TerminalAPI.V1.TransactionIDType.t() | nil,
          ItemAmount: number | nil,
          ProductCode: String.t() | nil,
          StoredValueAccountStatus: AdyenEx.TerminalAPI.V1.StoredValueAccountStatus.t() | nil,
          StoredValueTransactionType: String.t()
        }

  defstruct [
    :Currency,
    :EanUpc,
    :HostTransactionID,
    :ItemAmount,
    :ProductCode,
    :StoredValueAccountStatus,
    :StoredValueTransactionType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Currency: :string,
      EanUpc: :string,
      HostTransactionID: {AdyenEx.TerminalAPI.V1.TransactionIDType, :t},
      ItemAmount: {:number, "double"},
      ProductCode: :string,
      StoredValueAccountStatus: {AdyenEx.TerminalAPI.V1.StoredValueAccountStatus, :t},
      StoredValueTransactionType:
        {:enum, ["Reserve", "Activate", "Load", "Unload", "Reverse", "Duplicate"]}
    ]
  end
end
