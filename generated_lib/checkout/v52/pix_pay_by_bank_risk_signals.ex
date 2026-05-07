defmodule AdyenEx.Checkout.V52.PixPayByBankRiskSignals do
  @moduledoc """
  Provides struct and type for a PixPayByBankRiskSignals
  """

  @type t :: %__MODULE__{
          confidenceScore: AdyenEx.Checkout.V52.ConfidenceScore.t() | nil,
          elapsedTimeSinceBoot: integer | nil,
          isRootedDevice: boolean | nil,
          language: String.t() | nil,
          osVersion: String.t() | nil,
          screenBrightness: integer | nil,
          screenDimensions: AdyenEx.Checkout.V52.ScreenDimensions.t() | nil,
          userTimeZoneOffset: integer | nil
        }

  defstruct [
    :confidenceScore,
    :elapsedTimeSinceBoot,
    :isRootedDevice,
    :language,
    :osVersion,
    :screenBrightness,
    :screenDimensions,
    :userTimeZoneOffset
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      confidenceScore: {AdyenEx.Checkout.V52.ConfidenceScore, :t},
      elapsedTimeSinceBoot: {:integer, "int64"},
      isRootedDevice: :boolean,
      language: :string,
      osVersion: :string,
      screenBrightness: {:integer, "int32"},
      screenDimensions: {AdyenEx.Checkout.V52.ScreenDimensions, :t},
      userTimeZoneOffset: {:integer, "int32"}
    ]
  end
end
