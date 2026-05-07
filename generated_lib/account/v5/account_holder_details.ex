defmodule AdyenEx.Account.V5.AccountHolderDetails do
  @moduledoc """
  Provides struct and type for a AccountHolderDetails
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Account.V5.ViasAddress.t(),
          bankAccountDetails: [AdyenEx.Account.V5.BankAccountDetail.t()] | nil,
          bankAggregatorDataReference: String.t() | nil,
          businessDetails: AdyenEx.Account.V5.BusinessDetails.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          individualDetails: AdyenEx.Account.V5.IndividualDetails.t() | nil,
          lastReviewDate: String.t() | nil,
          merchantCategoryCode: String.t() | nil,
          metadata: map | nil,
          payoutMethods: [AdyenEx.Account.V5.PayoutMethod.t()] | nil,
          phoneNumber: AdyenEx.Account.V5.ViasPhoneNumber.t() | nil,
          principalBusinessAddress: AdyenEx.Account.V5.ViasAddress.t() | nil,
          storeDetails: [AdyenEx.Account.V5.StoreDetail.t()] | nil,
          webAddress: String.t() | nil
        }

  defstruct [
    :address,
    :bankAccountDetails,
    :bankAggregatorDataReference,
    :businessDetails,
    :email,
    :fullPhoneNumber,
    :individualDetails,
    :lastReviewDate,
    :merchantCategoryCode,
    :metadata,
    :payoutMethods,
    :phoneNumber,
    :principalBusinessAddress,
    :storeDetails,
    :webAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {AdyenEx.Account.V5.ViasAddress, :t},
      bankAccountDetails: [{AdyenEx.Account.V5.BankAccountDetail, :t}],
      bankAggregatorDataReference: :string,
      businessDetails: {AdyenEx.Account.V5.BusinessDetails, :t},
      email: :string,
      fullPhoneNumber: :string,
      individualDetails: {AdyenEx.Account.V5.IndividualDetails, :t},
      lastReviewDate: :string,
      merchantCategoryCode: :string,
      metadata: :map,
      payoutMethods: [{AdyenEx.Account.V5.PayoutMethod, :t}],
      phoneNumber: {AdyenEx.Account.V5.ViasPhoneNumber, :t},
      principalBusinessAddress: {AdyenEx.Account.V5.ViasAddress, :t},
      storeDetails: [{AdyenEx.Account.V5.StoreDetail, :t}],
      webAddress: :string
    ]
  end
end
