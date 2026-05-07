defmodule AdyenEx.Management.V1.Store do
  @moduledoc """
  Provides struct and type for a Store
  """

  @type t :: %__MODULE__{
          _links: AdyenEx.Management.V1.Links.t() | nil,
          address: AdyenEx.Management.V1.StoreLocation.t() | nil,
          businessLineIds: [String.t()] | nil,
          description: String.t() | nil,
          externalReferenceId: String.t() | nil,
          id: String.t() | nil,
          localizedInformation: AdyenEx.Management.V1.LocalizedInformation.t() | nil,
          merchantId: String.t() | nil,
          phoneNumber: String.t() | nil,
          reference: String.t() | nil,
          shopperStatement: String.t() | nil,
          splitConfiguration: AdyenEx.Management.V1.StoreSplitConfiguration.t() | nil,
          status: String.t() | nil
        }

  defstruct [
    :_links,
    :address,
    :businessLineIds,
    :description,
    :externalReferenceId,
    :id,
    :localizedInformation,
    :merchantId,
    :phoneNumber,
    :reference,
    :shopperStatement,
    :splitConfiguration,
    :status
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {AdyenEx.Management.V1.Links, :t},
      address: {AdyenEx.Management.V1.StoreLocation, :t},
      businessLineIds: [:string],
      description: :string,
      externalReferenceId: :string,
      id: :string,
      localizedInformation: {AdyenEx.Management.V1.LocalizedInformation, :t},
      merchantId: :string,
      phoneNumber: :string,
      reference: :string,
      shopperStatement: :string,
      splitConfiguration: {AdyenEx.Management.V1.StoreSplitConfiguration, :t},
      status: {:enum, ["active", "closed", "inactive"]}
    ]
  end
end
