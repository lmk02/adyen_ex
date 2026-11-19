defmodule AdyenEx.TerminalAPI.V1.SensitiveCardData do
  @moduledoc """
  Provides struct and type for a SensitiveCardData
  """

  @type t :: %__MODULE__{
          CardSeqNumb: String.t() | nil,
          ExpiryDate: String.t() | nil,
          PAN: String.t() | nil,
          TrackData: [AdyenEx.TerminalAPI.V1.TrackData.t()] | nil
        }

  defstruct [:CardSeqNumb, :ExpiryDate, :PAN, :TrackData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardSeqNumb: :string,
      ExpiryDate: :string,
      PAN: :string,
      TrackData: [{AdyenEx.TerminalAPI.V1.TrackData, :t}]
    ]
  end
end
