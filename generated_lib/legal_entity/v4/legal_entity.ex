defmodule AdyenEx.LegalEntity.V4.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documentDetails: [AdyenEx.LegalEntity.V4.DocumentReference.t()] | nil,
          documents: [AdyenEx.LegalEntity.V4.EntityReference.t()] | nil,
          entityAssociations: [AdyenEx.LegalEntity.V4.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: AdyenEx.LegalEntity.V4.Individual.t() | nil,
          organization: AdyenEx.LegalEntity.V4.Organization.t() | nil,
          problems: [AdyenEx.LegalEntity.V4.CapabilityProblem.t()] | nil,
          reference: String.t() | nil,
          soleProprietorship: AdyenEx.LegalEntity.V4.SoleProprietorship.t() | nil,
          transferInstruments: [AdyenEx.LegalEntity.V4.TransferInstrumentReference.t()] | nil,
          trust: AdyenEx.LegalEntity.V4.Trust.t() | nil,
          type: String.t() | nil,
          unincorporatedPartnership: AdyenEx.LegalEntity.V4.UnincorporatedPartnership.t() | nil,
          verificationDeadlines: [AdyenEx.LegalEntity.V4.VerificationDeadline.t()] | nil,
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
      documentDetails: [{AdyenEx.LegalEntity.V4.DocumentReference, :t}],
      documents: [{AdyenEx.LegalEntity.V4.EntityReference, :t}],
      entityAssociations: [{AdyenEx.LegalEntity.V4.LegalEntityAssociation, :t}],
      id: :string,
      individual: {AdyenEx.LegalEntity.V4.Individual, :t},
      organization: {AdyenEx.LegalEntity.V4.Organization, :t},
      problems: [{AdyenEx.LegalEntity.V4.CapabilityProblem, :t}],
      reference: :string,
      soleProprietorship: {AdyenEx.LegalEntity.V4.SoleProprietorship, :t},
      transferInstruments: [{AdyenEx.LegalEntity.V4.TransferInstrumentReference, :t}],
      trust: {AdyenEx.LegalEntity.V4.Trust, :t},
      type:
        {:enum,
         [
           "individual",
           "organization",
           "soleProprietorship",
           "trust",
           "unincorporatedPartnership"
         ]},
      unincorporatedPartnership: {AdyenEx.LegalEntity.V4.UnincorporatedPartnership, :t},
      verificationDeadlines: [{AdyenEx.LegalEntity.V4.VerificationDeadline, :t}],
      verificationPlan: :string
    ]
  end
end
