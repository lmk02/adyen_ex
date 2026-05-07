defmodule AdyenEx.TerminalAPI.V1.RepeatedResponseMessageBody do
  @moduledoc """
  Provides struct and type for a RepeatedResponseMessageBody
  """

  @type t :: %__MODULE__{
          CardAcquisitionResponse: AdyenEx.TerminalAPI.V1.CardAcquisitionResponse.t() | nil,
          CardReaderAPDUResponse: AdyenEx.TerminalAPI.V1.CardReaderAPDUResponse.t() | nil,
          LoyaltyResponse: AdyenEx.TerminalAPI.V1.LoyaltyResponse.t() | nil,
          PaymentResponse: AdyenEx.TerminalAPI.V1.PaymentResponse.t() | nil,
          ReversalResponse: AdyenEx.TerminalAPI.V1.ReversalResponse.t() | nil,
          StoredValueResponse: AdyenEx.TerminalAPI.V1.StoredValueResponse.t() | nil
        }

  defstruct [
    :CardAcquisitionResponse,
    :CardReaderAPDUResponse,
    :LoyaltyResponse,
    :PaymentResponse,
    :ReversalResponse,
    :StoredValueResponse
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardAcquisitionResponse: {AdyenEx.TerminalAPI.V1.CardAcquisitionResponse, :t},
      CardReaderAPDUResponse: {AdyenEx.TerminalAPI.V1.CardReaderAPDUResponse, :t},
      LoyaltyResponse: {AdyenEx.TerminalAPI.V1.LoyaltyResponse, :t},
      PaymentResponse: {AdyenEx.TerminalAPI.V1.PaymentResponse, :t},
      ReversalResponse: {AdyenEx.TerminalAPI.V1.ReversalResponse, :t},
      StoredValueResponse: {AdyenEx.TerminalAPI.V1.StoredValueResponse, :t}
    ]
  end
end
