defmodule AdyenEx.Management.V1.TerminalSettings do
  @moduledoc """
  Provides struct and type for a TerminalSettings
  """

  @type t :: %__MODULE__{
          cardholderReceipt: AdyenEx.Management.V1.CardholderReceipt.t() | nil,
          connectivity: AdyenEx.Management.V1.Connectivity.t() | nil,
          dcc: AdyenEx.Management.V1.Dcc.t() | nil,
          gratuities: [AdyenEx.Management.V1.Gratuity.t()] | nil,
          hardware: AdyenEx.Management.V1.Hardware.t() | nil,
          homeScreen: AdyenEx.Management.V1.HomeScreenSettings.t() | nil,
          kioskMode: AdyenEx.Management.V1.KioskModeSettings.t() | nil,
          localization: AdyenEx.Management.V1.Localization.t() | nil,
          moto: AdyenEx.Management.V1.Moto.t() | nil,
          nexo: AdyenEx.Management.V1.Nexo.t() | nil,
          offlineProcessing: AdyenEx.Management.V1.OfflineProcessing.t() | nil,
          opi: AdyenEx.Management.V1.Opi.t() | nil,
          passcodes: AdyenEx.Management.V1.Passcodes.t() | nil,
          payAtTable: AdyenEx.Management.V1.PayAtTable.t() | nil,
          payment: AdyenEx.Management.V1.Payment.t() | nil,
          receiptOptions: AdyenEx.Management.V1.ReceiptOptions.t() | nil,
          receiptPrinting: AdyenEx.Management.V1.ReceiptPrinting.t() | nil,
          refunds: AdyenEx.Management.V1.Refunds.t() | nil,
          signature: AdyenEx.Management.V1.Signature.t() | nil,
          standalone: AdyenEx.Management.V1.Standalone.t() | nil,
          storeAndForward: AdyenEx.Management.V1.StoreAndForward.t() | nil,
          surcharge: AdyenEx.Management.V1.Surcharge.t() | nil,
          tapToPay: AdyenEx.Management.V1.TapToPay.t() | nil,
          terminalInstructions: AdyenEx.Management.V1.TerminalInstructions.t() | nil,
          timeouts: AdyenEx.Management.V1.Timeouts.t() | nil,
          wifiProfiles: AdyenEx.Management.V1.WifiProfiles.t() | nil
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
      cardholderReceipt: {AdyenEx.Management.V1.CardholderReceipt, :t},
      connectivity: {AdyenEx.Management.V1.Connectivity, :t},
      dcc: {AdyenEx.Management.V1.Dcc, :t},
      gratuities: [{AdyenEx.Management.V1.Gratuity, :t}],
      hardware: {AdyenEx.Management.V1.Hardware, :t},
      homeScreen: {AdyenEx.Management.V1.HomeScreenSettings, :t},
      kioskMode: {AdyenEx.Management.V1.KioskModeSettings, :t},
      localization: {AdyenEx.Management.V1.Localization, :t},
      moto: {AdyenEx.Management.V1.Moto, :t},
      nexo: {AdyenEx.Management.V1.Nexo, :t},
      offlineProcessing: {AdyenEx.Management.V1.OfflineProcessing, :t},
      opi: {AdyenEx.Management.V1.Opi, :t},
      passcodes: {AdyenEx.Management.V1.Passcodes, :t},
      payAtTable: {AdyenEx.Management.V1.PayAtTable, :t},
      payment: {AdyenEx.Management.V1.Payment, :t},
      receiptOptions: {AdyenEx.Management.V1.ReceiptOptions, :t},
      receiptPrinting: {AdyenEx.Management.V1.ReceiptPrinting, :t},
      refunds: {AdyenEx.Management.V1.Refunds, :t},
      signature: {AdyenEx.Management.V1.Signature, :t},
      standalone: {AdyenEx.Management.V1.Standalone, :t},
      storeAndForward: {AdyenEx.Management.V1.StoreAndForward, :t},
      surcharge: {AdyenEx.Management.V1.Surcharge, :t},
      tapToPay: {AdyenEx.Management.V1.TapToPay, :t},
      terminalInstructions: {AdyenEx.Management.V1.TerminalInstructions, :t},
      timeouts: {AdyenEx.Management.V1.Timeouts, :t},
      wifiProfiles: {AdyenEx.Management.V1.WifiProfiles, :t}
    ]
  end
end
