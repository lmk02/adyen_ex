defmodule AdyenEx.Management.V3.BcmcResponseInfo do
  @moduledoc """
  Provides struct and type for a BcmcResponseInfo
  """

  @type t :: %__MODULE__{
          enableBcmcMobile: boolean | nil,
          transactionDescription:
            AdyenEx.Management.V3.TransactionDescriptionResponseInfo.t() | nil
        }

  defstruct [:enableBcmcMobile, :transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      enableBcmcMobile: :boolean,
      transactionDescription: {AdyenEx.Management.V3.TransactionDescriptionResponseInfo, :t}
    ]
  end
end
