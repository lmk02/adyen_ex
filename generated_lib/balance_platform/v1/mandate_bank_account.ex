defmodule AdyenEx.BalancePlatform.V1.MandateBankAccount do
  @moduledoc """
  Provides struct and type for a MandateBankAccount
  """

  @type t :: %__MODULE__{
          accountHolder: AdyenEx.BalancePlatform.V1.MandatePartyIdentification.t(),
          accountIdentification: AdyenEx.BalancePlatform.V1.MandateAccountIdentification.t()
        }

  defstruct [:accountHolder, :accountIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {AdyenEx.BalancePlatform.V1.MandatePartyIdentification, :t},
      accountIdentification: {AdyenEx.BalancePlatform.V1.MandateAccountIdentification, :t}
    ]
  end
end
