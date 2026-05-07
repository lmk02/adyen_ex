defmodule AdyenEx.Account.V5.KYCBankAccountCheckResult do
  @moduledoc """
  Provides struct and type for a KYCBankAccountCheckResult
  """

  @type t :: %__MODULE__{
          bankAccountUUID: String.t() | nil,
          checks: [AdyenEx.Account.V5.KYCCheckStatusData.t()] | nil
        }

  defstruct [:bankAccountUUID, :checks]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [bankAccountUUID: :string, checks: [{AdyenEx.Account.V5.KYCCheckStatusData, :t}]]
  end
end
