defmodule AdyenEx.Management.V1.SepaDirectDebitUpdateInfo do
  @moduledoc """
  Provides struct and type for a SepaDirectDebitUpdateInfo
  """

  @type t :: %__MODULE__{
          transactionDescription: AdyenEx.Management.V1.TransactionDescriptionInfo.t() | nil
        }

  defstruct [:transactionDescription]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [transactionDescription: {AdyenEx.Management.V1.TransactionDescriptionInfo, :t}]
  end
end
