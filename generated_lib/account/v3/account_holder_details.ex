defmodule AdyenEx.Account.V3.AccountHolderDetails do
  @moduledoc """
  Provides struct and type for a AccountHolderDetails
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Account.V3.ViasAddress.t(),
          bankAccountDetails: [AdyenEx.Account.V3.BankAccountDetailWrapper.t()] | nil,
          businessDetails: AdyenEx.Account.V3.BusinessDetails.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          individualDetails: AdyenEx.Account.V3.IndividualDetails.t() | nil,
          lastReviewDate: String.t() | nil,
          merchantCategoryCode: String.t() | nil,
          metadata: map | nil,
          phoneNumber: AdyenEx.Account.V3.ViasPhoneNumber.t() | nil,
          principalBusinessAddress: AdyenEx.Account.V3.ViasAddress.t() | nil,
          webAddress: String.t() | nil
        }

  defstruct [
    :address,
    :bankAccountDetails,
    :businessDetails,
    :email,
    :fullPhoneNumber,
    :individualDetails,
    :lastReviewDate,
    :merchantCategoryCode,
    :metadata,
    :phoneNumber,
    :principalBusinessAddress,
    :webAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {AdyenEx.Account.V3.ViasAddress, :t},
      bankAccountDetails: [{AdyenEx.Account.V3.BankAccountDetailWrapper, :t}],
      businessDetails: {AdyenEx.Account.V3.BusinessDetails, :t},
      email: :string,
      fullPhoneNumber: :string,
      individualDetails: {AdyenEx.Account.V3.IndividualDetails, :t},
      lastReviewDate: :string,
      merchantCategoryCode: :string,
      metadata: :map,
      phoneNumber: {AdyenEx.Account.V3.ViasPhoneNumber, :t},
      principalBusinessAddress: {AdyenEx.Account.V3.ViasAddress, :t},
      webAddress: :string
    ]
  end
end
