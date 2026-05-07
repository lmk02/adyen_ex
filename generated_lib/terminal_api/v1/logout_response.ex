defmodule AdyenEx.TerminalAPI.V1.LogoutResponse do
  @moduledoc """
  Provides struct and type for a LogoutResponse
  """

  @type t :: %__MODULE__{Response: AdyenEx.TerminalAPI.V1.Response.t()}

  defstruct [:Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Response: {AdyenEx.TerminalAPI.V1.Response, :t}]
  end
end
