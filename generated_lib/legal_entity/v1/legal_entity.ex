defmodule AdyenEx.LegalEntity.V1.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documents: [AdyenEx.LegalEntity.V1.EntityReference.t()] | nil,
          entityAssociations: [AdyenEx.LegalEntity.V1.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: AdyenEx.LegalEntity.V1.Individual.t() | nil,
          organization: AdyenEx.LegalEntity.V1.Organization.t() | nil,
          reference: String.t() | nil,
          transferInstruments: [AdyenEx.LegalEntity.V1.TransferInstrumentReference.t()] | nil,
          trust: AdyenEx.LegalEntity.V1.Trust.t() | nil,
          type: String.t() | nil,
          unincorporatedPartnership: AdyenEx.LegalEntity.V1.UnincorporatedPartnership.t() | nil,
          verificationPlan: String.t() | nil
        }

  defstruct [
    :capabilities,
    :documents,
    :entityAssociations,
    :id,
    :individual,
    :organization,
    :reference,
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
      documents: [{AdyenEx.LegalEntity.V1.EntityReference, :t}],
      entityAssociations: [{AdyenEx.LegalEntity.V1.LegalEntityAssociation, :t}],
      id: :string,
      individual: {AdyenEx.LegalEntity.V1.Individual, :t},
      organization: {AdyenEx.LegalEntity.V1.Organization, :t},
      reference: :string,
      transferInstruments: [{AdyenEx.LegalEntity.V1.TransferInstrumentReference, :t}],
      trust: {AdyenEx.LegalEntity.V1.Trust, :t},
      type: {:enum, ["individual", "organization"]},
      unincorporatedPartnership: {AdyenEx.LegalEntity.V1.UnincorporatedPartnership, :t},
      verificationPlan: :string
    ]
  end
end
