defmodule AdyenEx.LegalEntity.V2.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documentDetails: [AdyenEx.LegalEntity.V2.DocumentReference.t()] | nil,
          documents: [AdyenEx.LegalEntity.V2.EntityReference.t()] | nil,
          entityAssociations: [AdyenEx.LegalEntity.V2.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: AdyenEx.LegalEntity.V2.Individual.t() | nil,
          organization: AdyenEx.LegalEntity.V2.Organization.t() | nil,
          reference: String.t() | nil,
          soleProprietorship: AdyenEx.LegalEntity.V2.SoleProprietorship.t() | nil,
          transferInstruments: [AdyenEx.LegalEntity.V2.TransferInstrumentReference.t()] | nil,
          trust: AdyenEx.LegalEntity.V2.Trust.t() | nil,
          type: String.t() | nil,
          unincorporatedPartnership: AdyenEx.LegalEntity.V2.UnincorporatedPartnership.t() | nil,
          verificationPlan: String.t() | nil
        }

  defstruct [
    :capabilities,
    :documentDetails,
    :documents,
    :entityAssociations,
    :id,
    :individual,
    :organization,
    :reference,
    :soleProprietorship,
    :transferInstruments,
    :trust,
    :type,
    :unincorporatedPartnership,
    :verificationPlan
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capabilities: :map,
      documentDetails: [{AdyenEx.LegalEntity.V2.DocumentReference, :t}],
      documents: [{AdyenEx.LegalEntity.V2.EntityReference, :t}],
      entityAssociations: [{AdyenEx.LegalEntity.V2.LegalEntityAssociation, :t}],
      id: :string,
      individual: {AdyenEx.LegalEntity.V2.Individual, :t},
      organization: {AdyenEx.LegalEntity.V2.Organization, :t},
      reference: :string,
      soleProprietorship: {AdyenEx.LegalEntity.V2.SoleProprietorship, :t},
      transferInstruments: [{AdyenEx.LegalEntity.V2.TransferInstrumentReference, :t}],
      trust: {AdyenEx.LegalEntity.V2.Trust, :t},
      type:
        {:enum,
         [
           "individual",
           "organization",
           "soleProprietorship",
           "trust",
           "unincorporatedPartnership"
         ]},
      unincorporatedPartnership: {AdyenEx.LegalEntity.V2.UnincorporatedPartnership, :t},
      verificationPlan: :string
    ]
  end
end
