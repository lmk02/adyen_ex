defmodule AdyenEx.Management.V3.ValuelinkResponseInfo do
  @moduledoc """
  Provides struct and type for a ValuelinkResponseInfo
  """

  @type t :: %__MODULE__{
          alternateMerchantNumber: String.t() | nil,
          authorisationMid: String.t() | nil,
          pinSupport: String.t() | nil,
          terminalId: String.t() | nil
        }

  defstruct [:alternateMerchantNumber, :authorisationMid, :pinSupport, :terminalId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      alternateMerchantNumber: :string,
      authorisationMid: :string,
      pinSupport: {:enum, ["PIN", "NO PIN"]},
      terminalId: :string
    ]
  end
end
