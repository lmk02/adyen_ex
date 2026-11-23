defmodule AdyenEx.TerminalAPI.V1.SensitiveMobileData do
  @moduledoc """
  Provides struct and type for a SensitiveMobileData
  """

  @type t :: %__MODULE__{IMEI: String.t() | nil, IMSI: String.t() | nil, MSISDN: String.t()}

  defstruct [:IMEI, :IMSI, :MSISDN]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [IMEI: :string, IMSI: :string, MSISDN: :string]
  end
end
