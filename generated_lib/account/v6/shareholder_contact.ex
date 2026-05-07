defmodule AdyenEx.Account.V6.ShareholderContact do
  @moduledoc """
  Provides struct and type for a ShareholderContact
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Account.V6.ViasAddress.t() | nil,
          email: String.t() | nil,
          fullPhoneNumber: String.t() | nil,
          jobTitle: String.t() | nil,
          name: AdyenEx.Account.V6.ViasName.t() | nil,
          personalData: AdyenEx.Account.V6.ViasPersonalData.t() | nil,
          phoneNumber: AdyenEx.Account.V6.ViasPhoneNumber.t() | nil,
          shareholderCode: String.t() | nil,
          shareholderReference: String.t() | nil,
          shareholderType: String.t() | nil,
          webAddress: String.t() | nil
        }

  defstruct [
    :address,
    :email,
    :fullPhoneNumber,
    :jobTitle,
    :name,
    :personalData,
    :phoneNumber,
    :shareholderCode,
    :shareholderReference,
    :shareholderType,
    :webAddress
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {AdyenEx.Account.V6.ViasAddress, :t},
      email: :string,
      fullPhoneNumber: :string,
      jobTitle: :string,
      name: {AdyenEx.Account.V6.ViasName, :t},
      personalData: {AdyenEx.Account.V6.ViasPersonalData, :t},
      phoneNumber: {AdyenEx.Account.V6.ViasPhoneNumber, :t},
      shareholderCode: :string,
      shareholderReference: :string,
      shareholderType: {:enum, ["Controller", "Owner", "Signatory"]},
      webAddress: :string
    ]
  end
end
