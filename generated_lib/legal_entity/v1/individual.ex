defmodule AdyenEx.LegalEntity.V1.Individual do
  @moduledoc """
  Provides struct and type for a Individual
  """

  @type t :: %__MODULE__{
          birthData: AdyenEx.LegalEntity.V1.BirthData.t() | nil,
          email: String.t() | nil,
          identificationData: AdyenEx.LegalEntity.V1.IdentificationData.t() | nil,
          name: AdyenEx.LegalEntity.V1.Name.t(),
          nationality: String.t() | nil,
          phone: AdyenEx.LegalEntity.V1.PhoneNumber.t() | nil,
          residentialAddress: AdyenEx.LegalEntity.V1.Address.t(),
          webData: AdyenEx.LegalEntity.V1.WebData.t() | nil
        }

  defstruct [
    :birthData,
    :email,
    :identificationData,
    :name,
    :nationality,
    :phone,
    :residentialAddress,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      birthData: {AdyenEx.LegalEntity.V1.BirthData, :t},
      email: :string,
      identificationData: {AdyenEx.LegalEntity.V1.IdentificationData, :t},
      name: {AdyenEx.LegalEntity.V1.Name, :t},
      nationality: :string,
      phone: {AdyenEx.LegalEntity.V1.PhoneNumber, :t},
      residentialAddress: {AdyenEx.LegalEntity.V1.Address, :t},
      webData: {AdyenEx.LegalEntity.V1.WebData, :t}
    ]
  end
end
