defmodule AdyenEx.LegalEntity.V4.BankAccountInfo do
  @moduledoc """
  Provides struct and type for a BankAccountInfo
  """

  @type t :: %__MODULE__{
          accountIdentification:
            AdyenEx.LegalEntity.V4.AULocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.CALocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.CZLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.DKLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.HKLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.HULocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.IbanAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.NOLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.NZLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.NumberAndBicAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.PLLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.SELocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.SGLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.UKLocalAccountIdentification.t()
            | AdyenEx.LegalEntity.V4.USLocalAccountIdentification.t()
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
           {AdyenEx.LegalEntity.V4.AULocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.CALocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.CZLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.DKLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.HKLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.HULocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.IbanAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.NOLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.NZLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.NumberAndBicAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.PLLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.SELocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.SGLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.UKLocalAccountIdentification, :t},
           {AdyenEx.LegalEntity.V4.USLocalAccountIdentification, :t}
         ]},
      accountType: :string,
      bankName: :string,
      countryCode: :string,
      trustedSource: :boolean
    ]
  end
end
