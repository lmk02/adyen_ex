defmodule AdyenEx.LegalEntity.V3.LegalEntityInfoRequiredType do
  @moduledoc """
  Provides struct and type for a LegalEntityInfoRequiredType
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          entityAssociations: [AdyenEx.LegalEntity.V3.LegalEntityAssociation.t()] | nil,
          individual: AdyenEx.LegalEntity.V3.Individual.t() | nil,
          organization: AdyenEx.LegalEntity.V3.Organization.t() | nil,
          reference: String.t() | nil,
          soleProprietorship: AdyenEx.LegalEntity.V3.SoleProprietorship.t() | nil,
          trust: AdyenEx.LegalEntity.V3.Trust.t() | nil,
          type: String.t(),
          unincorporatedPartnership: AdyenEx.LegalEntity.V3.UnincorporatedPartnership.t() | nil,
          verificationPlan: String.t() | nil
        }

  defstruct [
    :capabilities,
    :entityAssociations,
    :individual,
    :organization,
    :reference,
    :soleProprietorship,
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
      entityAssociations: [{AdyenEx.LegalEntity.V3.LegalEntityAssociation, :t}],
      individual: {AdyenEx.LegalEntity.V3.Individual, :t},
      organization: {AdyenEx.LegalEntity.V3.Organization, :t},
      reference: :string,
      soleProprietorship: {AdyenEx.LegalEntity.V3.SoleProprietorship, :t},
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
      verificationPlan: :string
    ]
  end
end
