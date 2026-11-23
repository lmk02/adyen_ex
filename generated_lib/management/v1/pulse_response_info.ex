defmodule AdyenEx.Management.V1.PulseResponseInfo do
  @moduledoc """
  Provides struct and type for a PulseResponseInfo
  """

  @type t :: %__MODULE__{
          networkProcessingMode: String.t() | nil,
          processingType: String.t() | nil,
          transactionDescription:
            AdyenEx.Management.V1.TransactionDescriptionResponseInfo.t() | nil
        }

  defstruct [:networkProcessingMode, :processingType, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      networkProcessingMode: {:enum, ["auth", "sale"]},
      processingType: {:enum, ["billpay", "ecom", "pos"]},
      transactionDescription: {AdyenEx.Management.V1.TransactionDescriptionResponseInfo, :t}
    ]
  end
end
