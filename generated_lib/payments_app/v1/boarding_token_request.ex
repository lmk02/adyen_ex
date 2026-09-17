defmodule AdyenEx.PaymentsApp.V1.BoardingTokenRequest do
  @moduledoc """
  Provides struct and type for a BoardingTokenRequest
  """

  @type t :: %__MODULE__{
          boardingRequestToken: String.t(),
          subMerchantData: AdyenEx.PaymentsApp.V1.SubMerchantData.t() | nil
        }

  defstruct [:boardingRequestToken, :subMerchantData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [boardingRequestToken: :string, subMerchantData: {AdyenEx.PaymentsApp.V1.SubMerchantData, :t}]
  end
end
