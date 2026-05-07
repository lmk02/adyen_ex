defmodule AdyenEx.LegalEntity.V4.Individual do
  @moduledoc """
  Provides struct and type for a Individual
  """

  @type t :: %__MODULE__{
          birthData: AdyenEx.LegalEntity.V4.BirthData.t() | nil,
          email: String.t() | nil,
          identificationData: AdyenEx.LegalEntity.V4.IdentificationData.t() | nil,
          name: AdyenEx.LegalEntity.V4.Name.t(),
          nationality: String.t() | nil,
          phone: AdyenEx.LegalEntity.V4.PhoneNumber.t() | nil,
          residentialAddress: AdyenEx.LegalEntity.V4.Address.t(),
          support: AdyenEx.LegalEntity.V4.Support.t() | nil,
          taxInformation: [AdyenEx.LegalEntity.V4.TaxInformation.t()] | nil,
          webData: AdyenEx.LegalEntity.V4.WebData.t() | nil
        }

  defstruct [
    :birthData,
    :email,
    :identificationData,
    :name,
    :nationality,
    :phone,
    :residentialAddress,
    :support,
    :taxInformation,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      birthData: {AdyenEx.LegalEntity.V4.BirthData, :t},
      email: :string,
      identificationData: {AdyenEx.LegalEntity.V4.IdentificationData, :t},
      name: {AdyenEx.LegalEntity.V4.Name, :t},
      nationality: :string,
      phone: {AdyenEx.LegalEntity.V4.PhoneNumber, :t},
      residentialAddress: {AdyenEx.LegalEntity.V4.Address, :t},
      support: {AdyenEx.LegalEntity.V4.Support, :t},
      taxInformation: [{AdyenEx.LegalEntity.V4.TaxInformation, :t}],
      webData: {AdyenEx.LegalEntity.V4.WebData, :t}
    ]
  end
end
