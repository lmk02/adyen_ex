defmodule AdyenEx.Management.V3.TerminalOrdersResponse do
  @moduledoc """
  Provides struct and type for a TerminalOrdersResponse
  """

  @type t :: %__MODULE__{data: [AdyenEx.Management.V3.TerminalOrder.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{AdyenEx.Management.V3.TerminalOrder, :t}]]
  end
end
