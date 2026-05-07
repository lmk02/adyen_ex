defmodule AdyenEx.Transfer.V4.MerchantPurchaseData do
  @moduledoc """
  Provides struct and type for a MerchantPurchaseData
  """

  @type t :: %__MODULE__{
          airline: AdyenEx.Transfer.V4.Airline.t() | nil,
          lodging: [AdyenEx.Transfer.V4.Lodging.t()] | nil,
          type: String.t()
        }

  defstruct [:airline, :lodging, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      airline: {AdyenEx.Transfer.V4.Airline, :t},
      lodging: [{AdyenEx.Transfer.V4.Lodging, :t}],
      type: {:const, "merchantPurchaseData"}
    ]
  end
end
