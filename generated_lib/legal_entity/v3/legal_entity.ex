defmodule AdyenEx.LegalEntity.V3.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documentDetails: [AdyenEx.LegalEntity.V3.DocumentReference.t()] | nil,
          documents: [AdyenEx.LegalEntity.V3.EntityReference.t()] | nil,
          entityAssociations: [AdyenEx.LegalEntity.V3.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: AdyenEx.LegalEntity.V3.Individual.t() | nil,
          organization: AdyenEx.LegalEntity.V3.Organization.t() | nil,
          problems: [AdyenEx.LegalEntity.V3.CapabilityProblem.t()] | nil,
          reference: String.t() | nil,
          soleProprietorship: AdyenEx.LegalEntity.V3.SoleProprietorship.t() | nil,
          transferInstruments: [AdyenEx.LegalEntity.V3.TransferInstrumentReference.t()] | nil,
          trust: AdyenEx.LegalEntity.V3.Trust.t() | nil,
          type: String.t() | nil,
          unincorporatedPartnership: AdyenEx.LegalEntity.V3.UnincorporatedPartnership.t() | nil,
          verificationDeadlines: [AdyenEx.LegalEntity.V3.VerificationDeadline.t()] | nil,
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
    :problems,
    :reference,
    :soleProprietorship,
    :transferInstruments,
    :trust,
    :type,
    :unincorporatedPartnership,
    :verificationDeadlines,
    :verificationPlan
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capabilities: :map,
      documentDetails: [{AdyenEx.LegalEntity.V3.DocumentReference, :t}],
      documents: [{AdyenEx.LegalEntity.V3.EntityReference, :t}],
      entityAssociations: [{AdyenEx.LegalEntity.V3.LegalEntityAssociation, :t}],
      id: :string,
      individual: {AdyenEx.LegalEntity.V3.Individual, :t},
      organization: {AdyenEx.LegalEntity.V3.Organization, :t},
      problems: [{AdyenEx.LegalEntity.V3.CapabilityProblem, :t}],
      reference: :string,
      soleProprietorship: {AdyenEx.LegalEntity.V3.SoleProprietorship, :t},
      transferInstruments: [{AdyenEx.LegalEntity.V3.TransferInstrumentReference, :t}],
      trust: {AdyenEx.LegalEntity.V3.Trust, :t},
      type:
        {:enum,
         [
           "individual",
           "organization",
           "soleProprietorship",
           "trust",
           "unincorporatedPartnership"
         ]},
      unincorporatedPartnership: {AdyenEx.LegalEntity.V3.UnincorporatedPartnership, :t},
      verificationDeadlines: [{AdyenEx.LegalEntity.V3.VerificationDeadline, :t}],
      verificationPlan: :string
    ]
  end
end
