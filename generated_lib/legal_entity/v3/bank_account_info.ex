defmodule AdyenEx.LegalEntity.V3.BankAccountInfo do
  @moduledoc """
  Provides struct and type for a BankAccountInfo
  """

  @type t :: %__MODULE__{
          accountIdentification:
            AdyenEx.LegalEntity.V3.AULocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.CALocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.CZLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.DKLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.HKLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.HULocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.IbanAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.NOLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.NZLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.NumberAndBicAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.PLLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.SELocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.SGLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.UKLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V3.USLocalAccountIdentification.t()
            | nil,
          accountType: String.t() | nil,
          bankName: String.t() | nil,
          countryCode: String.t() | nil,
          trustedSource: boolean | nil
        }

  defstruct [:accountIdentification, :accountType, :bankName, :countryCode, :trustedSource]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountIdentification:
        {:union,
         [
           {AdyenEx.LegalEntity.V3.AULocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.CALocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.CZLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.DKLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.HKLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.HULocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.IbanAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.NOLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.NZLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.NumberAndBicAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.PLLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.SELocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.SGLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.UKLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V3.USLocalAccountIdentification, :t}
         ]},
      accountType: :string,
      bankName: :string,
      countryCode: :string,
      trustedSource: :boolean
    ]
  end
end
