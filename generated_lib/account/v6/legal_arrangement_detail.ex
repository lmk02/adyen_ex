defmodule AdyenEx.Account.V6.LegalArrangementDetail do
  @moduledoc """
  Provides struct and type for a LegalArrangementDetail
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Account.V6.ViasAddress.t(),
          legalArrangementCode: String.t() | nil,
          legalArrangementEntities: [AdyenEx.Account.V6.LegalArrangementEntityDetail.t()] | nil,
          legalArrangementReference: String.t() | nil,
          legalForm: String.t() | nil,
          name: String.t(),
          registrationNumber: String.t() | nil,
          taxNumber: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :address,
    :legalArrangementCode,
    :legalArrangementEntities,
    :legalArrangementReference,
    :legalForm,
    :name,
    :registrationNumber,
    :taxNumber,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {AdyenEx.Account.V6.ViasAddress, :t},
      legalArrangementCode: :string,
      legalArrangementEntities: [{AdyenEx.Account.V6.LegalArrangementEntityDetail, :t}],
      legalArrangementReference: :string,
      legalForm:
        {:enum,
         [
           "CashManagementTrust",
           "CorporateUnitTrust",
           "DeceasedEstate",
           "DiscretionaryInvestmentTrust",
           "DiscretionaryServicesManagementTrust",
           "DiscretionaryTradingTrust",
           "FirstHomeSaverAccountsTrust",
           "FixedTrust",
           "FixedUnitTrust",
           "HybridTrust",
           "ListedPublicUnitTrust",
           "OtherTrust",
           "PooledSuperannuationTrust",
           "PublicTradingTrust",
           "UnlistedPublicUnitTrust",
           "LimitedPartnership",
           "FamilyPartnership",
           "OtherPartnership"
         ]},
      name: :string,
      registrationNumber: :string,
      taxNumber: :string,
      type: {:enum, ["Association", "Partnership", "SoleProprietorship", "Trust"]}
    ]
  end
end
