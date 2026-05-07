defmodule AdyenEx.Management.V3.TerminalSettings do
  @moduledoc """
  Provides struct and type for a TerminalSettings
  """

  @type t :: %__MODULE__{
          cardholderReceipt: AdyenEx.Management.V3.CardholderReceipt.t() | nil,
          connectivity: AdyenEx.Management.V3.Connectivity.t() | nil,
          dcc: AdyenEx.Management.V3.Dcc.t() | nil,
          gratuities: [AdyenEx.Management.V3.Gratuity.t()] | nil,
          hardware: AdyenEx.Management.V3.Hardware.t() | nil,
          homeScreen: AdyenEx.Management.V3.HomeScreenSettings.t() | nil,
          kioskMode: AdyenEx.Management.V3.KioskModeSettings.t() | nil,
          localization: AdyenEx.Management.V3.Localization.t() | nil,
          moto: AdyenEx.Management.V3.Moto.t() | nil,
          nexo: AdyenEx.Management.V3.Nexo.t() | nil,
          offlineProcessing: AdyenEx.Management.V3.OfflineProcessing.t() | nil,
          opi: AdyenEx.Management.V3.Opi.t() | nil,
          passcodes: AdyenEx.Management.V3.Passcodes.t() | nil,
          payAtTable: AdyenEx.Management.V3.PayAtTable.t() | nil,
          payment: AdyenEx.Management.V3.Payment.t() | nil,
          receiptOptions: AdyenEx.Management.V3.ReceiptOptions.t() | nil,
          receiptPrinting: AdyenEx.Management.V3.ReceiptPrinting.t() | nil,
          refunds: AdyenEx.Management.V3.Refunds.t() | nil,
          signature: AdyenEx.Management.V3.Signature.t() | nil,
          standalone: AdyenEx.Management.V3.Standalone.t() | nil,
          storeAndForward: AdyenEx.Management.V3.StoreAndForward.t() | nil,
          surcharge: AdyenEx.Management.V3.Surcharge.t() | nil,
          tapToPay: AdyenEx.Management.V3.TapToPay.t() | nil,
          terminalInstructions: AdyenEx.Management.V3.TerminalInstructions.t() | nil,
          timeouts: AdyenEx.Management.V3.Timeouts.t() | nil,
          wifiProfiles: AdyenEx.Management.V3.WifiProfiles.t() | nil
        }

  defstruct [
    :cardholderReceipt,
    :connectivity,
    :dcc,
    :gratuities,
    :hardware,
    :homeScreen,
    :kioskMode,
    :localization,
    :moto,
    :nexo,
    :offlineProcessing,
    :opi,
    :passcodes,
    :payAtTable,
    :payment,
    :receiptOptions,
    :receiptPrinting,
    :refunds,
    :signature,
    :standalone,
    :storeAndForward,
    :surcharge,
    :tapToPay,
    :terminalInstructions,
    :timeouts,
    :wifiProfiles
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardholderReceipt: {AdyenEx.Management.V3.CardholderReceipt, :t},
      connectivity: {AdyenEx.Management.V3.Connectivity, :t},
      dcc: {AdyenEx.Management.V3.Dcc, :t},
      gratuities: [{AdyenEx.Management.V3.Gratuity, :t}],
      hardware: {AdyenEx.Management.V3.Hardware, :t},
      homeScreen: {AdyenEx.Management.V3.HomeScreenSettings, :t},
      kioskMode: {AdyenEx.Management.V3.KioskModeSettings, :t},
      localization: {AdyenEx.Management.V3.Localization, :t},
      moto: {AdyenEx.Management.V3.Moto, :t},
      nexo: {AdyenEx.Management.V3.Nexo, :t},
      offlineProcessing: {AdyenEx.Management.V3.OfflineProcessing, :t},
      opi: {AdyenEx.Management.V3.Opi, :t},
      passcodes: {AdyenEx.Management.V3.Passcodes, :t},
      payAtTable: {AdyenEx.Management.V3.PayAtTable, :t},
      payment: {AdyenEx.Management.V3.Payment, :t},
      receiptOptions: {AdyenEx.Management.V3.ReceiptOptions, :t},
      receiptPrinting: {AdyenEx.Management.V3.ReceiptPrinting, :t},
      refunds: {AdyenEx.Management.V3.Refunds, :t},
      signature: {AdyenEx.Management.V3.Signature, :t},
      standalone: {AdyenEx.Management.V3.Standalone, :t},
      storeAndForward: {AdyenEx.Management.V3.StoreAndForward, :t},
      surcharge: {AdyenEx.Management.V3.Surcharge, :t},
      tapToPay: {AdyenEx.Management.V3.TapToPay, :t},
      terminalInstructions: {AdyenEx.Management.V3.TerminalInstructions, :t},
      timeouts: {AdyenEx.Management.V3.Timeouts, :t},
      wifiProfiles: {AdyenEx.Management.V3.WifiProfiles, :t}
    ]
  end
end
