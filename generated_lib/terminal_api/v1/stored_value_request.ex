defmodule AdyenEx.TerminalAPI.V1.StoredValueRequest do
  @moduledoc """
  Provides struct and type for a StoredValueRequest
  """

  @type t :: %__MODULE__{
          SaleData: AdyenEx.TerminalAPI.V1.SaleData.t(),
          StoredValueData: [AdyenEx.TerminalAPI.V1.StoredValueData.t()]
        }

  defstruct [:SaleData, :StoredValueData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      SaleData: {AdyenEx.TerminalAPI.V1.SaleData, :t},
      StoredValueData: [{AdyenEx.TerminalAPI.V1.StoredValueData, :t}]
    ]
  end
end
