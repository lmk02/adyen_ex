defmodule AdyenEx.Management.V1.AlipayPlusInfo do
  @moduledoc """
  Provides struct and type for a AlipayPlusInfo
  """

  @type t :: %__MODULE__{
          branchName: String.t() | nil,
          merchantMobileAppName: String.t() | nil,
          productServiceDescription: String.t() | nil,
          settlementCurrencyCode: String.t() | nil
        }

  defstruct [
    :branchName,
    :merchantMobileAppName,
    :productServiceDescription,
    :settlementCurrencyCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      branchName: :string,
      merchantMobileAppName: :string,
      productServiceDescription: :string,
      settlementCurrencyCode: :string
    ]
  end
end
