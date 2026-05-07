defmodule AdyenEx.LegalEntity.V4.Organization do
  @moduledoc """
  Provides struct and type for a Organization
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t() | nil,
          dateOfIncorporation: String.t() | nil,
          dateOfInitiationOfLegalProceeding: String.t() | nil,
          description: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          doingBusinessAsAbsent: boolean | nil,
          economicSector: String.t() | nil,
          email: String.t() | nil,
          financialReports: [AdyenEx.LegalEntity.V4.FinancialReport.t()] | nil,
          globalLegalEntityIdentifier: String.t() | nil,
          headOfficeIndicator: boolean | nil,
          institutionalSector: String.t() | nil,
          legalForm: String.t() | nil,
          legalName: String.t(),
          phone: AdyenEx.LegalEntity.V4.PhoneNumber.t() | nil,
          principalPlaceOfBusiness: AdyenEx.LegalEntity.V4.Address.t() | nil,
          registeredAddress: AdyenEx.LegalEntity.V4.Address.t(),
          registrationNumber: String.t() | nil,
          registrationNumberAbsent: boolean | nil,
          statusOfLegalProceeding: String.t() | nil,
          stockData: AdyenEx.LegalEntity.V4.StockData.t() | nil,
          support: AdyenEx.LegalEntity.V4.Support.t() | nil,
          taxInformation: [AdyenEx.LegalEntity.V4.TaxInformation.t()] | nil,
          taxReportingClassification: AdyenEx.LegalEntity.V4.TaxReportingClassification.t() | nil,
          type: String.t() | nil,
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil,
          webData: AdyenEx.LegalEntity.V4.WebData.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :dateOfIncorporation,
    :dateOfInitiationOfLegalProceeding,
    :description,
    :doingBusinessAs,
    :doingBusinessAsAbsent,
    :economicSector,
    :email,
    :financialReports,
    :globalLegalEntityIdentifier,
    :headOfficeIndicator,
    :institutionalSector,
    :legalForm,
    :legalName,
    :phone,
    :principalPlaceOfBusiness,
    :registeredAddress,
    :registrationNumber,
    :registrationNumberAbsent,
    :statusOfLegalProceeding,
    :stockData,
    :support,
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
      dateOfInitiationOfLegalProceeding: :string,
      description: :string,
      doingBusinessAs: :string,
      doingBusinessAsAbsent: :boolean,
      economicSector: :string,
      email: :string,
      financialReports: [{AdyenEx.LegalEntity.V4.FinancialReport, :t}],
      globalLegalEntityIdentifier: :string,
      headOfficeIndicator: :boolean,
      institutionalSector:
        {:enum,
         [
           "nonFinancialCorporation",
           "centralBank",
           "creditInstitutions",
           "depositTakingCorporations",
           "moneyMarketFunds",
           "nonMMFInvestmentFunds",
           "financialVehicleCorporation",
           "otherFinancialIntermediaries",
           "financialAuxiliaries",
           "captiveFinancialInstitutionsAndMoneyLenders",
           "insuranceCorporations",
           "pensionFunds",
           "centralGovernment",
           "stateGovernment",
           "localGovernment",
           "socialSecurityFunds",
           "nonProfitInstitutionsServingHouseholds"
         ]},
      legalForm: :string,
      legalName: :string,
      phone: {AdyenEx.LegalEntity.V4.PhoneNumber, :t},
      principalPlaceOfBusiness: {AdyenEx.LegalEntity.V4.Address, :t},
      registeredAddress: {AdyenEx.LegalEntity.V4.Address, :t},
      registrationNumber: :string,
      registrationNumberAbsent: :boolean,
      statusOfLegalProceeding:
        {:enum,
         [
           "noLegalActionsTaken",
           "underJudicialAdministration",
           "bankruptcyInsolvency",
           "otherLegalMeasures"
         ]},
      stockData: {AdyenEx.LegalEntity.V4.StockData, :t},
      support: {AdyenEx.LegalEntity.V4.Support, :t},
      taxInformation: [{AdyenEx.LegalEntity.V4.TaxInformation, :t}],
      taxReportingClassification: {AdyenEx.LegalEntity.V4.TaxReportingClassification, :t},
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
      webData: {AdyenEx.LegalEntity.V4.WebData, :t}
    ]
  end
end
