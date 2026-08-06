defmodule AdyenEx.TerminalAPI.V1.OutputContent do
  @moduledoc """
  Provides struct and type for a OutputContent
  """

  @type t :: %__MODULE__{
          OutputBarcode: AdyenEx.TerminalAPI.V1.OutputBarcode.t() | nil,
          OutputFormat: String.t(),
          OutputText: [AdyenEx.TerminalAPI.V1.OutputText.t()] | nil,
          OutputXHTML: String.t() | nil,
          PredefinedContent: AdyenEx.TerminalAPI.V1.PredefinedContent.t() | nil
        }

  defstruct [:OutputBarcode, :OutputFormat, :OutputText, :OutputXHTML, :PredefinedContent]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      OutputBarcode: {AdyenEx.TerminalAPI.V1.OutputBarcode, :t},
      OutputFormat: {:enum, ["MessageRef", "Text", "XHTML", "BarCode"]},
      OutputText: [{AdyenEx.TerminalAPI.V1.OutputText, :t}],
      OutputXHTML: {:string, "byte"},
      PredefinedContent: {AdyenEx.TerminalAPI.V1.PredefinedContent, :t}
    ]
  end
end
