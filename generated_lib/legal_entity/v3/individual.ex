defmodule AdyenEx.LegalEntity.V3.Individual do
  @moduledoc """
  Provides struct and type for a Individual
  """

  @type t :: %__MODULE__{
          birthData: AdyenEx.LegalEntity.V3.BirthData.t() | nil,
          email: String.t() | nil,
          identificationData: AdyenEx.LegalEntity.V3.IdentificationData.t() | nil,
          name: AdyenEx.LegalEntity.V3.Name.t(),
          nationality: String.t() | nil,
          phone: AdyenEx.LegalEntity.V3.PhoneNumber.t() | nil,
          residentialAddress: AdyenEx.LegalEntity.V3.Address.t(),
          taxInformation: [AdyenEx.LegalEntity.V3.TaxInformation.t()] | nil,
          webData: AdyenEx.LegalEntity.V3.WebData.t() | nil
        }

  defstruct [
    :birthData,
    :email,
    :identificationData,
    :name,
    :nationality,
    :phone,
    :residentialAddress,
    :taxInformation,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      birthData: {AdyenEx.LegalEntity.V3.BirthData, :t},
      email: :string,
      identificationData: {AdyenEx.LegalEntity.V3.IdentificationData, :t},
      name: {AdyenEx.LegalEntity.V3.Name, :t},
      nationality: :string,
      phone: {AdyenEx.LegalEntity.V3.PhoneNumber, :t},
      residentialAddress: {AdyenEx.LegalEntity.V3.Address, :t},
      taxInformation: [{AdyenEx.LegalEntity.V3.TaxInformation, :t}],
      webData: {AdyenEx.LegalEntity.V3.WebData, :t}
    ]
  end
end
