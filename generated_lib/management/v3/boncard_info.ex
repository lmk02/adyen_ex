defmodule AdyenEx.Management.V3.BoncardInfo do
  @moduledoc """
  Provides struct and type for a BoncardInfo
  """

  @type t :: %__MODULE__{terminalId: String.t()}

  defstruct [:terminalId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [terminalId: :string]
  end
end
