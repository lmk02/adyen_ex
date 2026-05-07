defmodule AdyenEx.LegalEntity.V1.Organization do
  @moduledoc """
  Provides struct and type for a Organization
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          email: String.t() | nil,
          legalName: String.t(),
          phone: AdyenEx.LegalEntity.V1.PhoneNumber.t() | nil,
          principalPlaceOfBusiness: AdyenEx.LegalEntity.V1.Address.t() | nil,
          registeredAddress: AdyenEx.LegalEntity.V1.Address.t(),
          registrationNumber: String.t() | nil,
          stockData: AdyenEx.LegalEntity.V1.StockData.t() | nil,
          taxExempt: boolean | nil,
          taxId: String.t() | nil,
          taxIdAbsenceReason: String.t() | nil,
          type: String.t() | nil,
          webData: AdyenEx.LegalEntity.V1.WebData.t() | nil
        }

  defstruct [
    :description,
    :doingBusinessAs,
    :email,
    :legalName,
    :phone,
    :principalPlaceOfBusiness,
    :registeredAddress,
    :registrationNumber,
    :stockData,
    :taxExempt,
    :taxId,
    :taxIdAbsenceReason,
    :type,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      doingBusinessAs: :string,
      email: :string,
      legalName: :string,
      phone: {AdyenEx.LegalEntity.V1.PhoneNumber, :t},
      principalPlaceOfBusiness: {AdyenEx.LegalEntity.V1.Address, :t},
      registeredAddress: {AdyenEx.LegalEntity.V1.Address, :t},
      registrationNumber: :string,
      stockData: {AdyenEx.LegalEntity.V1.StockData, :t},
      taxExempt: :boolean,
      taxId: :string,
      taxIdAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
      type:
        {:enum,
         [
           "associationIncorporated",
           "governmentalOrganization",
           "listedPublicCompany",
           "nonProfit",
           "partnershipIncorporated",
           "privateCompany"
         ]},
      webData: {AdyenEx.LegalEntity.V1.WebData, :t}
    ]
  end
end
