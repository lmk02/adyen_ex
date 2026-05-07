defmodule AdyenEx.Management.V3.NyceInfo do
  @moduledoc """
  Provides struct and type for a NyceInfo
  """

  @type t :: %__MODULE__{
          processingType: String.t(),
          transactionDescription: AdyenEx.Management.V3.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:processingType, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      processingType: {:enum, ["billpay", "ecom", "pos"]},
      transactionDescription: {AdyenEx.Management.V3.TransactionDescriptionInfo, :t}
    ]
  end
end
