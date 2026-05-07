defmodule AdyenEx.BalancePlatform.V2.TransactionRuleRestrictions do
  @moduledoc """
  Provides struct and type for a TransactionRuleRestrictions
  """

  @type t :: %__MODULE__{
          activeNetworkTokens:
            AdyenEx.BalancePlatform.V2.ActiveNetworkTokensRestriction.t() | nil,
          brandVariants: AdyenEx.BalancePlatform.V2.BrandVariantsRestriction.t() | nil,
          counterpartyBank: AdyenEx.BalancePlatform.V2.CounterpartyBankRestriction.t() | nil,
          counterpartyTypes: AdyenEx.BalancePlatform.V2.CounterpartyTypesRestriction.t() | nil,
          countries: AdyenEx.BalancePlatform.V2.CountriesRestriction.t() | nil,
          dayOfWeek: AdyenEx.BalancePlatform.V2.DayOfWeekRestriction.t() | nil,
          differentCurrencies:
            AdyenEx.BalancePlatform.V2.DifferentCurrenciesRestriction.t() | nil,
          entryModes: AdyenEx.BalancePlatform.V2.EntryModesRestriction.t() | nil,
          internationalTransaction:
            AdyenEx.BalancePlatform.V2.InternationalTransactionRestriction.t() | nil,
          matchingTransactions:
            AdyenEx.BalancePlatform.V2.MatchingTransactionsRestriction.t() | nil,
          matchingValues: AdyenEx.BalancePlatform.V2.MatchingValuesRestriction.t() | nil,
          mccs: AdyenEx.BalancePlatform.V2.MccsRestriction.t() | nil,
          merchantNames: AdyenEx.BalancePlatform.V2.MerchantNamesRestriction.t() | nil,
          merchants: AdyenEx.BalancePlatform.V2.MerchantsRestriction.t() | nil,
          processingTypes: AdyenEx.BalancePlatform.V2.ProcessingTypesRestriction.t() | nil,
          riskScores: AdyenEx.BalancePlatform.V2.RiskScoresRestriction.t() | nil,
          sameAmountRestriction: AdyenEx.BalancePlatform.V2.SameAmountRestriction.t() | nil,
          sameCounterpartyRestriction:
            AdyenEx.BalancePlatform.V2.SameCounterpartyRestriction.t() | nil,
          sourceAccountTypes: AdyenEx.BalancePlatform.V2.SourceAccountTypesRestriction.t() | nil,
          timeOfDay: AdyenEx.BalancePlatform.V2.TimeOfDayRestriction.t() | nil,
          tokenRequestors: AdyenEx.BalancePlatform.V2.TokenRequestorsRestriction.t() | nil,
          totalAmount: AdyenEx.BalancePlatform.V2.TotalAmountRestriction.t() | nil,
          walletProviderAccountScore:
            AdyenEx.BalancePlatform.V2.WalletProviderAccountScoreRestriction.t() | nil,
          walletProviderDeviceScore:
            AdyenEx.BalancePlatform.V2.WalletProviderDeviceScore.t() | nil,
          walletProviderDeviceType: AdyenEx.BalancePlatform.V2.WalletProviderDeviceType.t() | nil
        }

  defstruct [
    :activeNetworkTokens,
    :brandVariants,
    :counterpartyBank,
    :counterpartyTypes,
    :countries,
    :dayOfWeek,
    :differentCurrencies,
    :entryModes,
    :internationalTransaction,
    :matchingTransactions,
    :matchingValues,
    :mccs,
    :merchantNames,
    :merchants,
    :processingTypes,
    :riskScores,
    :sameAmountRestriction,
    :sameCounterpartyRestriction,
    :sourceAccountTypes,
    :timeOfDay,
    :tokenRequestors,
    :totalAmount,
    :walletProviderAccountScore,
    :walletProviderDeviceScore,
    :walletProviderDeviceType
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      activeNetworkTokens: {AdyenEx.BalancePlatform.V2.ActiveNetworkTokensRestriction, :t},
      brandVariants: {AdyenEx.BalancePlatform.V2.BrandVariantsRestriction, :t},
      counterpartyBank: {AdyenEx.BalancePlatform.V2.CounterpartyBankRestriction, :t},
      counterpartyTypes: {AdyenEx.BalancePlatform.V2.CounterpartyTypesRestriction, :t},
      countries: {AdyenEx.BalancePlatform.V2.CountriesRestriction, :t},
      dayOfWeek: {AdyenEx.BalancePlatform.V2.DayOfWeekRestriction, :t},
      differentCurrencies: {AdyenEx.BalancePlatform.V2.DifferentCurrenciesRestriction, :t},
      entryModes: {AdyenEx.BalancePlatform.V2.EntryModesRestriction, :t},
      internationalTransaction:
        {AdyenEx.BalancePlatform.V2.InternationalTransactionRestriction, :t},
      matchingTransactions: {AdyenEx.BalancePlatform.V2.MatchingTransactionsRestriction, :t},
      matchingValues: {AdyenEx.BalancePlatform.V2.MatchingValuesRestriction, :t},
      mccs: {AdyenEx.BalancePlatform.V2.MccsRestriction, :t},
      merchantNames: {AdyenEx.BalancePlatform.V2.MerchantNamesRestriction, :t},
      merchants: {AdyenEx.BalancePlatform.V2.MerchantsRestriction, :t},
      processingTypes: {AdyenEx.BalancePlatform.V2.ProcessingTypesRestriction, :t},
      riskScores: {AdyenEx.BalancePlatform.V2.RiskScoresRestriction, :t},
      sameAmountRestriction: {AdyenEx.BalancePlatform.V2.SameAmountRestriction, :t},
      sameCounterpartyRestriction: {AdyenEx.BalancePlatform.V2.SameCounterpartyRestriction, :t},
      sourceAccountTypes: {AdyenEx.BalancePlatform.V2.SourceAccountTypesRestriction, :t},
      timeOfDay: {AdyenEx.BalancePlatform.V2.TimeOfDayRestriction, :t},
      tokenRequestors: {AdyenEx.BalancePlatform.V2.TokenRequestorsRestriction, :t},
      totalAmount: {AdyenEx.BalancePlatform.V2.TotalAmountRestriction, :t},
      walletProviderAccountScore:
        {AdyenEx.BalancePlatform.V2.WalletProviderAccountScoreRestriction, :t},
      walletProviderDeviceScore: {AdyenEx.BalancePlatform.V2.WalletProviderDeviceScore, :t},
      walletProviderDeviceType: {AdyenEx.BalancePlatform.V2.WalletProviderDeviceType, :t}
    ]
  end
end
