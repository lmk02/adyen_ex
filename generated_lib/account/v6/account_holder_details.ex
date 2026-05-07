defmodule AdyenEx.Account.V6.AccountHolderDetails do
  @moduledoc """
  Provides struct and type for a AccountHolderDetails
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Account.V6.ViasAddress.t(),
          bankAccountDetails: [AdyenEx.Account.V6.BankAccountDetail.t()] | nil,
          bankAggregatorDataReference: String.t() | nil,
          businessDetails: AdyenEx.Account.V6.BusinessDetails.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          individualDetails: AdyenEx.Account.V6.IndividualDetails.t() | nil,
          lastReviewDate: String.t() | nil,
          legalArrangements: [AdyenEx.Account.V6.LegalArrangementDetail.t()] | nil,
          merchantCategoryCode: String.t() | nil,
          metadata: map | nil,
          payoutMethods: [AdyenEx.Account.V6.PayoutMethod.t()] | nil,
          phoneNumber: AdyenEx.Account.V6.ViasPhoneNumber.t() | nil,
          principalBusinessAddress: AdyenEx.Account.V6.ViasAddress.t() | nil,
          storeDetails: [AdyenEx.Account.V6.StoreDetail.t()] | nil,
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
    :legalArrangements,
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
      address: {AdyenEx.Account.V6.ViasAddress, :t},
      bankAccountDetails: [{AdyenEx.Account.V6.BankAccountDetail, :t}],
      bankAggregatorDataReference: :string,
      businessDetails: {AdyenEx.Account.V6.BusinessDetails, :t},
      email: :string,
      fullPhoneNumber: :string,
      individualDetails: {AdyenEx.Account.V6.IndividualDetails, :t},
      lastReviewDate: :string,
      legalArrangements: [{AdyenEx.Account.V6.LegalArrangementDetail, :t}],
      merchantCategoryCode: :string,
      metadata: :map,
      payoutMethods: [{AdyenEx.Account.V6.PayoutMethod, :t}],
      phoneNumber: {AdyenEx.Account.V6.ViasPhoneNumber, :t},
      principalBusinessAddress: {AdyenEx.Account.V6.ViasAddress, :t},
      storeDetails: [{AdyenEx.Account.V6.StoreDetail, :t}],
      webAddress: :string
    ]
  end
end
