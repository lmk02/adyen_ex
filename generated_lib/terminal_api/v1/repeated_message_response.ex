defmodule AdyenEx.TerminalAPI.V1.RepeatedMessageResponse do
  @moduledoc """
  Provides struct and type for a RepeatedMessageResponse
  """

  @type t :: %__MODULE__{
          MessageHeader: AdyenEx.TerminalAPI.V1.MessageHeader.t(),
          RepeatedResponseMessageBody: AdyenEx.TerminalAPI.V1.RepeatedResponseMessageBody.t()
        }

  defstruct [:MessageHeader, :RepeatedResponseMessageBody]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      MessageHeader: {AdyenEx.TerminalAPI.V1.MessageHeader, :t},
      RepeatedResponseMessageBody: {AdyenEx.TerminalAPI.V1.RepeatedResponseMessageBody, :t}
    ]
  end
end
