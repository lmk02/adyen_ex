defmodule AdyenEx.TerminalAPI.V1.HostStatus do
  @moduledoc """
  Provides struct and type for a HostStatus
  """

  @type t :: %__MODULE__{AcquirerID: String.t(), IsReachableFlag: boolean | nil}

  defstruct [:AcquirerID, :IsReachableFlag]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AcquirerID: :string, IsReachableFlag: :boolean]
  end
end
