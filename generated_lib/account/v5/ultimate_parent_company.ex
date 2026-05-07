defmodule AdyenEx.Account.V5.UltimateParentCompany do
  @moduledoc """
  Provides struct and type for a UltimateParentCompany
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Account.V5.ViasAddress.t() | nil,
          businessDetails: AdyenEx.Account.V5.UltimateParentCompanyBusinessDetails.t() | nil,
          ultimateParentCompanyCode: String.t() | nil
        }

  defstruct [:address, :businessDetails, :ultimateParentCompanyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {AdyenEx.Account.V5.ViasAddress, :t},
      businessDetails: {AdyenEx.Account.V5.UltimateParentCompanyBusinessDetails, :t},
      ultimateParentCompanyCode: :string
    ]
  end
end
