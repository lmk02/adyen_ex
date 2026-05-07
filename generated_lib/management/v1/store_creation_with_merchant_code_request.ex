defmodule AdyenEx.Management.V1.StoreCreationWithMerchantCodeRequest do
  @moduledoc """
  Provides struct and type for a StoreCreationWithMerchantCodeRequest
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Management.V1.StoreLocation.t(),
          businessLineIds: [String.t()] | nil,
          description: String.t(),
          externalReferenceId: String.t() | nil,
          localizedInformation: AdyenEx.Management.V1.LocalizedInformation.t() | nil,
          merchantId: String.t(),
          phoneNumber: String.t(),
          reference: String.t() | nil,
          shopperStatement: String.t(),
          splitConfiguration: AdyenEx.Management.V1.StoreSplitConfiguration.t() | nil
        }

  defstruct [
    :address,
    :businessLineIds,
    :description,
    :externalReferenceId,
    :localizedInformation,
    :merchantId,
    :phoneNumber,
    :reference,
    :shopperStatement,
    :splitConfiguration
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {AdyenEx.Management.V1.StoreLocation, :t},
      businessLineIds: [:string],
      description: :string,
      externalReferenceId: :string,
      localizedInformation: {AdyenEx.Management.V1.LocalizedInformation, :t},
      merchantId: :string,
      phoneNumber: :string,
      reference: :string,
      shopperStatement: :string,
      splitConfiguration: {AdyenEx.Management.V1.StoreSplitConfiguration, :t}
    ]
  end
end
