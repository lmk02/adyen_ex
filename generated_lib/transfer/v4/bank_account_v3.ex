defmodule AdyenEx.Transfer.V4.BankAccountV3 do
  @moduledoc """
  Provides struct and type for a BankAccountV3
  """

  @type t :: %__MODULE__{
          accountHolder: AdyenEx.Transfer.V4.PartyIdentification.t(),
          accountIdentification:
            AdyenEx.Transfer.V4.AULocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.BRLocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.CALocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.CZLocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.DKLocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.HKLocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.HULocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.IbanAccountIdentification.t()
            | AdyenEx.Transfer.V4.NOLocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.NZLocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.NumberAndBicAccountIdentification.t()
            | AdyenEx.Transfer.V4.PLLocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.SELocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.SGLocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.UKLocalAccountIdentification.t()
            | AdyenEx.Transfer.V4.USLocalAccountIdentification.t(),
          storedPaymentMethodId: String.t() | nil
        }

  defstruct [:accountHolder, :accountIdentification, :storedPaymentMethodId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolder: {AdyenEx.Transfer.V4.PartyIdentification, :t},
      accountIdentification:
        {:union,
         [
           {AdyenEx.Transfer.V4.AULocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.BRLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.CALocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.CZLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.DKLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.HKLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.HULocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.IbanAccountIdentification, :t},
           {AdyenEx.Transfer.V4.NOLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.NZLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.NumberAndBicAccountIdentification, :t},
           {AdyenEx.Transfer.V4.PLLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.SELocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.SGLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.UKLocalAccountIdentification, :t},
           {AdyenEx.Transfer.V4.USLocalAccountIdentification, :t}
         ]},
      storedPaymentMethodId: :string
    ]
  end
end
