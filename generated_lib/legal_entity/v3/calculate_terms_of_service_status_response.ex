defmodule AdyenEx.LegalEntity.V3.CalculateTermsOfServiceStatusResponse do
  @moduledoc """
  Provides struct and type for a CalculateTermsOfServiceStatusResponse
  """

  @type t :: %__MODULE__{termsOfServiceTypes: [String.t()] | nil}

  defstruct [:termsOfServiceTypes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      termsOfServiceTypes: [
        enum: [
          "adyenAccount",
          "adyenCapital",
          "adyenCapitalCashAdvance",
          "adyenCard",
          "adyenChargeCard",
          "adyenForPlatformsAdvanced",
          "adyenForPlatformsManage",
          "adyenFranchisee",
          "adyenIssuing",
          "adyenPccr",
          "directDebit",
          "kycOnInvite"
        ]
      ]
    ]
  end
end
