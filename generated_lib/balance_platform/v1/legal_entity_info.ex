defmodule AdyenEx.BalancePlatform.V1.LegalEntityInfo do
  @moduledoc """
  Provides struct and type for a LegalEntityInfo
  """

  @type t :: %__MODULE__{
          capabilities: map | nil,
          entityAssociations: [AdyenEx.BalancePlatform.V1.LegalEntityAssociation.t()] | nil,
          individual: AdyenEx.BalancePlatform.V1.Individual.t() | nil,
          organization: AdyenEx.BalancePlatform.V1.Organization.t() | nil,
          reference: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:capabilities, :entityAssociations, :individual, :organization, :reference, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      capabilities: :map,
      entityAssociations: [{AdyenEx.BalancePlatform.V1.LegalEntityAssociation, :t}],
      individual: {AdyenEx.BalancePlatform.V1.Individual, :t},
      organization: {AdyenEx.BalancePlatform.V1.Organization, :t},
      reference: :string,
      type: {:enum, ["individual", "organization"]}
    ]
  end
end
