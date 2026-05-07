defmodule AdyenEx.BalancePlatform.V1.LegalEntity do
  @moduledoc """
  Provides struct and type for a LegalEntity
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          documents: [AdyenEx.BalancePlatform.V1.EntityReference.t()] | nil,
          entityAssociations: [AdyenEx.BalancePlatform.V1.LegalEntityAssociation.t()] | nil,
          id: String.t(),
          individual: AdyenEx.BalancePlatform.V1.Individual.t() | nil,
          organization: AdyenEx.BalancePlatform.V1.Organization.t() | nil,
          reference: String.t() | nil,
          transferInstruments: [AdyenEx.BalancePlatform.V1.TransferInstrumentReference.t()] | nil,
          type: String.t() | nil
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
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capabilities: :map,
      documents: [{AdyenEx.BalancePlatform.V1.EntityReference, :t}],
      entityAssociations: [{AdyenEx.BalancePlatform.V1.LegalEntityAssociation, :t}],
      id: :string,
      individual: {AdyenEx.BalancePlatform.V1.Individual, :t},
      organization: {AdyenEx.BalancePlatform.V1.Organization, :t},
      reference: :string,
      transferInstruments: [{AdyenEx.BalancePlatform.V1.TransferInstrumentReference, :t}],
      type: {:enum, ["individual", "organization"]}
    ]
  end
end
