defmodule AdyenEx.TerminalAPI.V1.Input do
  @moduledoc """
  Provides struct and type for a Input
  """

  @type t :: %__MODULE__{
          ConfirmedFlag: boolean | nil,
          DigitInput: String.t() | nil,
          FunctionKey: String.t() | nil,
          InputCommand: String.t(),
          MenuEntryNumber: [integer] | nil,
          Password: String.t() | nil,
          TextInput: String.t() | nil
        }

  defstruct [
    :ConfirmedFlag,
    :DigitInput,
    :FunctionKey,
    :InputCommand,
    :MenuEntryNumber,
    :Password,
    :TextInput
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ConfirmedFlag: :boolean,
      DigitInput: :string,
      FunctionKey: :string,
      InputCommand:
        {:enum,
         [
           "GetAnyKey",
           "GetConfirmation",
           "SiteManager",
           "TextString",
           "DigitString",
           "DecimalString",
           "GetFunctionKey",
           "GetMenuEntry",
           "Password"
         ]},
      MenuEntryNumber: [:integer],
      Password: {:string, "byte"},
      TextInput: :string
    ]
  end
end
