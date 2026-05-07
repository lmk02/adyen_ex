defmodule AdyenEx.Account.V3.BusinessDetails do
  @moduledoc """
  Provides struct and type for a BusinessDetails
  """

  @type t :: %__MODULE__{
          doingBusinessAs: String.t() | nil,
          legalBusinessName: String.t() | nil,
          listedUltimateParentCompany:
            [AdyenEx.Account.V3.UltimateParentCompanyWrapper.t()] | nil,
          shareholders: [AdyenEx.Account.V3.ShareholderContactWrapper.t()] | nil,
          signatories: [AdyenEx.Account.V3.SignatoryContactWrapper.t()] | nil,
          taxId: String.t() | nil
        }

  defstruct [
    :doingBusinessAs,
    :legalBusinessName,
    :listedUltimateParentCompany,
    :shareholders,
    :signatories,
    :taxId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      doingBusinessAs: :string,
      legalBusinessName: :string,
      listedUltimateParentCompany: [{AdyenEx.Account.V3.UltimateParentCompanyWrapper, :t}],
      shareholders: [{AdyenEx.Account.V3.ShareholderContactWrapper, :t}],
      signatories: [{AdyenEx.Account.V3.SignatoryContactWrapper, :t}],
      taxId: :string
    ]
  end
end
