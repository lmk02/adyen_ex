defmodule AdyenEx.LegalEntity.V2.BusinessLineInfoUpdate do
  @moduledoc """
  Provides struct and type for a BusinessLineInfoUpdate
  """

  @type t :: %__MODULE__{
          industryCode: String.t() | nil,
          industryCodeDescription: String.t() | nil,
          salesChannels: [String.t()] | nil,
          sourceOfFunds: AdyenEx.LegalEntity.V2.SourceOfFunds.t() | nil,
          webData: [AdyenEx.LegalEntity.V2.WebData.t()] | nil,
          webDataExemption: AdyenEx.LegalEntity.V2.WebDataExemption.t() | nil
        }

  defstruct [
    :industryCode,
    :industryCodeDescription,
    :salesChannels,
    :sourceOfFunds,
    :webData,
    :webDataExemption
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      industryCode: :string,
      industryCodeDescription: :string,
      salesChannels: [:string],
      sourceOfFunds: {AdyenEx.LegalEntity.V2.SourceOfFunds, :t},
      webData: [{AdyenEx.LegalEntity.V2.WebData, :t}],
      webDataExemption: {AdyenEx.LegalEntity.V2.WebDataExemption, :t}
    ]
  end
end
