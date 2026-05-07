defmodule AdyenEx.BalancePlatform.V1.BankAccountIdentificationValidationRequest do
  @moduledoc """
  Provides struct and type for a BankAccountIdentificationValidationRequest
  """

  @type t :: %__MODULE__{
          accountIdentification:
            AdyenEx.BalancePlatform.V1.AULocalAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.CALocalAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.CZLocalAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.HULocalAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.IbanAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.NOLocalAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.NumberAndBicAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.PLLocalAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.SELocalAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.SGLocalAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.UKLocalAccountIdentification.t()
            | AdyenEx.BalancePlatform.V1.USLocalAccountIdentification.t()
        }

  defstruct [:accountIdentification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountIdentification:
        {:union,
         [
           {AdyenEx.BalancePlatform.V1.AULocalAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.CALocalAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.CZLocalAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.HULocalAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.IbanAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.NOLocalAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.NumberAndBicAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.PLLocalAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.SELocalAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.SGLocalAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.UKLocalAccountIdentification, :t},
           {AdyenEx.BalancePlatform.V1.USLocalAccountIdentification, :t}
         ]}
    ]
  end
end
