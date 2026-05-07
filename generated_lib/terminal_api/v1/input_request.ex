defmodule AdyenEx.TerminalAPI.V1.InputRequest do
  @moduledoc """
  Provides struct and type for a InputRequest
  """

  @type t :: %__MODULE__{
          DisplayOutput: AdyenEx.TerminalAPI.V1.DisplayOutput.t() | nil,
          InputData: AdyenEx.TerminalAPI.V1.InputData.t()
        }

  defstruct [:DisplayOutput, :InputData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DisplayOutput: {AdyenEx.TerminalAPI.V1.DisplayOutput, :t},
      InputData: {AdyenEx.TerminalAPI.V1.InputData, :t}
    ]
  end
end
