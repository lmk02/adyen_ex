defmodule AdyenEx.TerminalAPI.V1.MobileData do
  @moduledoc """
  Provides struct and type for a MobileData
  """

  @type t :: %__MODULE__{
          Geolocation: AdyenEx.TerminalAPI.V1.Geolocation.t() | nil,
          MaskedMSISDN: String.t() | nil,
          MobileCountryCode: String.t() | nil,
          MobileNetworkCode: String.t() | nil,
          ProtectedMobileData: String.t() | nil,
          SensitiveMobileData: AdyenEx.TerminalAPI.V1.SensitiveMobileData.t() | nil
        }

  defstruct [
    :Geolocation,
    :MaskedMSISDN,
    :MobileCountryCode,
    :MobileNetworkCode,
    :ProtectedMobileData,
    :SensitiveMobileData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      Geolocation: {AdyenEx.TerminalAPI.V1.Geolocation, :t},
      MaskedMSISDN: :string,
      MobileCountryCode: :string,
      MobileNetworkCode: :string,
      ProtectedMobileData: {:string, "byte"},
      SensitiveMobileData: {AdyenEx.TerminalAPI.V1.SensitiveMobileData, :t}
    ]
  end
end
