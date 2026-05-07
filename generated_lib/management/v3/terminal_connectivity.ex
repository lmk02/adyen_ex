defmodule AdyenEx.Management.V3.TerminalConnectivity do
  @moduledoc """
  Provides struct and type for a TerminalConnectivity
  """

  @type t :: %__MODULE__{
          bluetooth: AdyenEx.Management.V3.TerminalConnectivityBluetooth.t() | nil,
          cellular: AdyenEx.Management.V3.TerminalConnectivityCellular.t() | nil,
          ethernet: AdyenEx.Management.V3.TerminalConnectivityEthernet.t() | nil,
          wifi: AdyenEx.Management.V3.TerminalConnectivityWifi.t() | nil
        }

  defstruct [:bluetooth, :cellular, :ethernet, :wifi]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bluetooth: {AdyenEx.Management.V3.TerminalConnectivityBluetooth, :t},
      cellular: {AdyenEx.Management.V3.TerminalConnectivityCellular, :t},
      ethernet: {AdyenEx.Management.V3.TerminalConnectivityEthernet, :t},
      wifi: {AdyenEx.Management.V3.TerminalConnectivityWifi, :t}
    ]
  end
end
