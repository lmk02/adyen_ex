defmodule AdyenEx.TerminalAPI.V1.CapturedSignature do
  @moduledoc """
  Provides struct and type for a CapturedSignature
  """

  @type t :: %__MODULE__{
          AreaSize: AdyenEx.TerminalAPI.V1.AreaSize.t() | nil,
          SignaturePoint: [AdyenEx.TerminalAPI.V1.Point.t()] | nil
        }

  defstruct [:AreaSize, :SignaturePoint]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AreaSize: {AdyenEx.TerminalAPI.V1.AreaSize, :t},
      SignaturePoint: [{AdyenEx.TerminalAPI.V1.Point, :t}]
    ]
  end
end
