defmodule AdyenEx.Management.V1.BoncardResponseInfo do
  @moduledoc """
  Provides struct and type for a BoncardResponseInfo
  """

  @type t :: %__MODULE__{terminalId: String.t() | nil}

  defstruct [:terminalId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [terminalId: :string]
  end
end
