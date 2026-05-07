defmodule AdyenEx.Management.V3.TestWebhookResponse do
  @moduledoc """
  Provides struct and type for a TestWebhookResponse
  """

  @type t :: %__MODULE__{data: [AdyenEx.Management.V3.TestOutput.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{AdyenEx.Management.V3.TestOutput, :t}]]
  end
end
