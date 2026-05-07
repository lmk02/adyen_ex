defmodule AdyenEx.TerminalAPI.V1.InputResponse do
  @moduledoc """
  Provides struct and type for a InputResponse
  """

  @type t :: %__MODULE__{
          InputResult: AdyenEx.TerminalAPI.V1.InputResult.t(),
          OutputResult: AdyenEx.TerminalAPI.V1.OutputResult.t() | nil
        }

  defstruct [:InputResult, :OutputResult]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      InputResult: {AdyenEx.TerminalAPI.V1.InputResult, :t},
      OutputResult: {AdyenEx.TerminalAPI.V1.OutputResult, :t}
    ]
  end
end
