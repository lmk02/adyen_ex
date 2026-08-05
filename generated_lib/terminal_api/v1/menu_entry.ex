defmodule AdyenEx.TerminalAPI.V1.MenuEntry do
  @moduledoc """
  Provides struct and type for a MenuEntry
  """

  @type t :: %__MODULE__{
          DefaultSelectedFlag: boolean | nil,
          MenuEntryTag: String.t() | nil,
          OutputFormat: String.t(),
          OutputText: [AdyenEx.TerminalAPI.V1.OutputText.t()] | nil,
          OutputXHTML: String.t() | nil,
          PredefinedContent: AdyenEx.TerminalAPI.V1.PredefinedContent.t() | nil
        }

  defstruct [
    :DefaultSelectedFlag,
    :MenuEntryTag,
    :OutputFormat,
    :OutputText,
    :OutputXHTML,
    :PredefinedContent
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      DefaultSelectedFlag: :boolean,
      MenuEntryTag: {:enum, ["Selectable", "NonSelectable", "SubMenu", "NonSelectableSubMenu"]},
      OutputFormat: {:enum, ["MessageRef", "Text", "XHTML", "BarCode"]},
      OutputText: [{AdyenEx.TerminalAPI.V1.OutputText, :t}],
      OutputXHTML: {:string, "byte"},
      PredefinedContent: {AdyenEx.TerminalAPI.V1.PredefinedContent, :t}
    ]
  end
end
