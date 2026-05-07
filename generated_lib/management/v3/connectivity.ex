defmodule AdyenEx.Management.V3.Connectivity do
  @moduledoc """
  Provides struct and type for a Connectivity
  """

  @type t :: %__MODULE__{
          simcardStatus: String.t() | nil,
          terminalIPAddressURL: AdyenEx.Management.V3.EventUrl.t() | nil
        }

  defstruct [:simcardStatus, :terminalIPAddressURL]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      simcardStatus: {:enum, ["ACTIVATED", "INVENTORY"]},
      terminalIPAddressURL: {AdyenEx.Management.V3.EventUrl, :t}
    ]
  end
end
