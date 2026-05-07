defmodule AdyenEx.Management.V3.UpdatePaymentMethodInfo do
  @moduledoc """
  Provides struct and type for a UpdatePaymentMethodInfo
  """

  @type t :: %__MODULE__{
          accel: AdyenEx.Management.V3.AccelUpdateInfo.t() | nil,
          affirm: AdyenEx.Management.V3.AffirmUpdateInfo.t() | nil,
          bcmc: AdyenEx.Management.V3.BcmcUpdateInfo.t() | nil,
          carnet: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          cartesBancaires: AdyenEx.Management.V3.CartesBancairesUpdateInfo.t() | nil,
          countries: [String.t()] | nil,
          cup: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          currencies: [String.t()] | nil,
          customRoutingFlags: [String.t()] | nil,
          diners: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          discover: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          eft_directdebit_CA: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          eftpos_australia: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          enabled: boolean | nil,
          girocard: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          ideal: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          interac_card: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          jcb: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          maestro: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          maestro_usa: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          mc: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil,
          nyce: AdyenEx.Management.V3.NyceUpdateInfo.t() | nil,
          paybybank_plaid: AdyenEx.Management.V3.PayByBankPlaidUpdateInfo.t() | nil,
          pulse: AdyenEx.Management.V3.PulseUpdateInfo.t() | nil,
          sepadirectdebit: AdyenEx.Management.V3.SepaDirectDebitUpdateInfo.t() | nil,
          star: AdyenEx.Management.V3.StarUpdateInfo.t() | nil,
          storeId: String.t() | nil,
          storeIds: [String.t()] | nil,
          visa: AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo.t() | nil
        }

  defstruct [
    :accel,
    :affirm,
    :bcmc,
    :carnet,
    :cartesBancaires,
    :countries,
    :cup,
    :currencies,
    :customRoutingFlags,
    :diners,
    :discover,
    :eft_directdebit_CA,
    :eftpos_australia,
    :enabled,
    :girocard,
    :ideal,
    :interac_card,
    :jcb,
    :maestro,
    :maestro_usa,
    :mc,
    :nyce,
    :paybybank_plaid,
    :pulse,
    :sepadirectdebit,
    :star,
    :storeId,
    :storeIds,
    :visa
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accel: {AdyenEx.Management.V3.AccelUpdateInfo, :t},
      affirm: {AdyenEx.Management.V3.AffirmUpdateInfo, :t},
      bcmc: {AdyenEx.Management.V3.BcmcUpdateInfo, :t},
      carnet: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      cartesBancaires: {AdyenEx.Management.V3.CartesBancairesUpdateInfo, :t},
      countries: [:string],
      cup: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      currencies: [:string],
      customRoutingFlags: [:string],
      diners: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      discover: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      eft_directdebit_CA: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      eftpos_australia: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      enabled: :boolean,
      girocard: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      ideal: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      interac_card: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      jcb: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      maestro: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      maestro_usa: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      mc: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t},
      nyce: {AdyenEx.Management.V3.NyceUpdateInfo, :t},
      paybybank_plaid: {AdyenEx.Management.V3.PayByBankPlaidUpdateInfo, :t},
      pulse: {AdyenEx.Management.V3.PulseUpdateInfo, :t},
      sepadirectdebit: {AdyenEx.Management.V3.SepaDirectDebitUpdateInfo, :t},
      star: {AdyenEx.Management.V3.StarUpdateInfo, :t},
      storeId: :string,
      storeIds: [:string],
      visa: {AdyenEx.Management.V3.GenericPmWithTdiUpdateInfo, :t}
    ]
  end
end
