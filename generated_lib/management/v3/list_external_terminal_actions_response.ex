defmodule AdyenEx.Management.V3.ListExternalTerminalActionsResponse do
  @moduledoc """
  Provides struct and type for a ListExternalTerminalActionsResponse
  """

  @type t :: %__MODULE__{data: [AdyenEx.Management.V3.ExternalTerminalAction.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{AdyenEx.Management.V3.ExternalTerminalAction, :t}]]
  end
end
