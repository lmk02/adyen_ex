defmodule AdyenEx.LegalEntity.V2.Organization do
  @moduledoc """
  Provides struct and type for a Organization
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t() | nil,
          dateOfIncorporation: String.t() | nil,
          description: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          email: String.t() | nil,
          legalName: String.t(),
          phone: AdyenEx.LegalEntity.V2.PhoneNumber.t() | nil,
          principalPlaceOfBusiness: AdyenEx.LegalEntity.V2.Address.t() | nil,
          registeredAddress: AdyenEx.LegalEntity.V2.Address.t(),
          registrationNumber: String.t() | nil,
          stockData: AdyenEx.LegalEntity.V2.StockData.t() | nil,
          taxInformation: [AdyenEx.LegalEntity.V2.TaxInformation.t()] | nil,
          taxReportingClassification: AdyenEx.LegalEntity.V2.TaxReportingClassification.t() | nil,
          type: String.t() | nil,
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil,
          webData: AdyenEx.LegalEntity.V2.WebData.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :dateOfIncorporation,
    :description,
    :doingBusinessAs,
    :email,
    :legalName,
    :phone,
    :principalPlaceOfBusiness,
    :registeredAddress,
    :registrationNumber,
    :stockData,
    :taxInformation,
    :taxReportingClassification,
    :type,
    :vatAbsenceReason,
    :vatNumber,
    :webData
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      countryOfGoverningLaw: :string,
      dateOfIncorporation: :string,
      description: :string,
      doingBusinessAs: :string,
      email: :string,
      legalName: :string,
      phone: {AdyenEx.LegalEntity.V2.PhoneNumber, :t},
      principalPlaceOfBusiness: {AdyenEx.LegalEntity.V2.Address, :t},
      registeredAddress: {AdyenEx.LegalEntity.V2.Address, :t},
      registrationNumber: :string,
      stockData: {AdyenEx.LegalEntity.V2.StockData, :t},
      taxInformation: [{AdyenEx.LegalEntity.V2.TaxInformation, :t}],
      taxReportingClassification: {AdyenEx.LegalEntity.V2.TaxReportingClassification, :t},
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
      vatAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
      vatNumber: :string,
      webData: {AdyenEx.LegalEntity.V2.WebData, :t}
    ]
  end
end
