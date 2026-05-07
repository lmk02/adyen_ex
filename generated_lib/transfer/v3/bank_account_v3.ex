defmodule AdyenEx.Transfer.V3.BankAccountV3 do
  @moduledoc """
  Provides struct and type for a BankAccountV3
  """

  @type t :: %__MODULE__{
          accountHolder: AdyenEx.Transfer.V3.PartyIdentification.t(),
          accountIdentification:
            AdyenEx.Transfer.V3.AULocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.BRLocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.CALocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.CZLocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.DKLocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.HKLocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.HULocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.IbanAccountIdentification.t()
            | AdyenEx.Transfer.V3.NOLocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.NZLocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.NumberAndBicAccountIdentification.t()
            | AdyenEx.Transfer.V3.PLLocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.SELocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.SGLocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.UKLocalAccountIdentification.t()
            | AdyenEx.Transfer.V3.USLocalAccountIdentification.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [:accountHolder, :accountIdentification, :storedPaymentMethodId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {AdyenEx.Transfer.V3.PartyIdentification, :t},
      accountIdentification:
        {:union,
         [
           {AdyenEx.Transfer.V3.AULocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.BRLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.CALocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.CZLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.DKLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.HKLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.HULocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.IbanAccountIdentification, :t},
           {AdyenEx.Transfer.V3.NOLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.NZLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.NumberAndBicAccountIdentification, :t},
           {AdyenEx.Transfer.V3.PLLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.SELocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.SGLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.UKLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V3.USLocalAccountIdentification, :t}
         ]},
      storedPaymentMethodId: :string
    ]
  end
end
