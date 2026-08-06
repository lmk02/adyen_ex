defmodule AdyenEx.TerminalAPI.V1.CardData do
  @moduledoc """
  Provides struct and type for a CardData
  """

  @type t :: %__MODULE__{
          CardCountryCode: integer | nil,
          EntryMode: [String.t()] | nil,
          MaskedPan: String.t() | nil,
          PaymentAccountRef: String.t() | nil,
          PaymentBrand: String.t() | nil,
          PaymentToken: AdyenEx.TerminalAPI.V1.PaymentToken.t() | nil,
          ProtectedCardData: String.t() | nil,
          SensitiveCardData: AdyenEx.TerminalAPI.V1.SensitiveCardData.t() | nil
        }

  defstruct [
    :CardCountryCode,
    :EntryMode,
    :MaskedPan,
    :PaymentAccountRef,
    :PaymentBrand,
    :PaymentToken,
    :ProtectedCardData,
    :SensitiveCardData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      CardCountryCode: :integer,
      EntryMode: [
        enum: [
          "RFID",
          "Keyed",
          "Manual",
          "File",
          "Scanned",
          "MagStripe",
          "ICC",
          "SynchronousICC",
          "Tapped",
          "Contactless",
          "Mobile"
        ]
      ],
      MaskedPan: :string,
      PaymentAccountRef: :string,
      PaymentBrand: :string,
      PaymentToken: {AdyenEx.TerminalAPI.V1.PaymentToken, :t},
      ProtectedCardData: :string,
      SensitiveCardData: {AdyenEx.TerminalAPI.V1.SensitiveCardData, :t}
    ]
  end
end
