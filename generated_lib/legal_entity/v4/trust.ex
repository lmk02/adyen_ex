defmodule AdyenEx.LegalEntity.V4.Trust do
  @moduledoc """
  Provides struct and type for a Trust
  """

  @type t :: %__MODULE__{
          countryOfGoverningLaw: String.t(),
          dateOfIncorporation: String.t() | nil,
          description: String.t() | nil,
          doingBusinessAs: String.t() | nil,
          doingBusinessAsAbsent: boolean | nil,
          name: String.t(),
          principalPlaceOfBusiness: AdyenEx.LegalEntity.V4.Address.t() | nil,
          registeredAddress: AdyenEx.LegalEntity.V4.Address.t(),
          registrationNumber: String.t() | nil,
          taxInformation: [AdyenEx.LegalEntity.V4.TaxInformation.t()] | nil,
          type: String.t(),
          undefinedBeneficiaryInfo: [AdyenEx.LegalEntity.V4.UndefinedBeneficiary.t()] | nil,
          vatAbsenceReason: String.t() | nil,
          vatNumber: String.t() | nil
        }

  defstruct [
    :countryOfGoverningLaw,
    :dateOfIncorporation,
    :description,
    :doingBusinessAs,
    :doingBusinessAsAbsent,
    :name,
    :principalPlaceOfBusiness,
    :registeredAddress,
    :registrationNumber,
    :taxInformation,
    :type,
    :undefinedBeneficiaryInfo,
    :vatAbsenceReason,
    :vatNumber
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
      doingBusinessAsAbsent: :boolean,
      name: :string,
      principalPlaceOfBusiness: {AdyenEx.LegalEntity.V4.Address, :t},
      registeredAddress: {AdyenEx.LegalEntity.V4.Address, :t},
      registrationNumber: :string,
      taxInformation: [{AdyenEx.LegalEntity.V4.TaxInformation, :t}],
      type:
        {:enum,
         [
           "businessTrust",
           "cashManagementTrust",
           "charitableTrust",
           "corporateUnitTrust",
           "deceasedEstate",
           "discretionaryTrust",
           "discretionaryInvestmentTrust",
           "discretionaryServicesManagementTrust",
           "discretionaryTradingTrust",
           "familyTrust",
           "firstHomeSaverAccountsTrust",
           "fixedTrust",
           "fixedUnitTrust",
           "hybridTrust",
           "listedPublicUnitTrust",
           "otherTrust",
           "pooledSuperannuationTrust",
           "publicTradingTrust",
           "unlistedPublicUnitTrust"
         ]},
      undefinedBeneficiaryInfo: [{AdyenEx.LegalEntity.V4.UndefinedBeneficiary, :t}],
      vatAbsenceReason: {:enum, ["industryExemption", "belowTaxThreshold"]},
      vatNumber: :string
    ]
  end
end
