defmodule AdyenEx.TerminalAPI.V1.TransactionStatusResponse do
  @moduledoc """
  Provides struct and type for a TransactionStatusResponse
  """

  @type t :: %__MODULE__{
          MessageReference: AdyenEx.TerminalAPI.V1.MessageReference.t() | nil,
          RepeatedMessageResponse: AdyenEx.TerminalAPI.V1.RepeatedMessageResponse.t() | nil,
          Response: AdyenEx.TerminalAPI.V1.Response.t()
        }

  defstruct [:MessageReference, :RepeatedMessageResponse, :Response]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      MessageReference: {AdyenEx.TerminalAPI.V1.MessageReference, :t},
      RepeatedMessageResponse: {AdyenEx.TerminalAPI.V1.RepeatedMessageResponse, :t},
      Response: {AdyenEx.TerminalAPI.V1.Response, :t}
    ]
  end
end
