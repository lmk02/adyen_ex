defmodule AdyenEx.Payment.V68.VoidPendingRefundRequest do
  @moduledoc """
  Provides struct and type for a VoidPendingRefundRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          modificationAmount: AdyenEx.Payment.V68.Amount.t() | nil,
          mpiData: AdyenEx.Payment.V68.ThreeDSecureData.t() | nil,
          originalMerchantReference: String.t() | nil,
          originalReference: String.t() | nil,
          platformChargebackLogic: AdyenEx.Payment.V68.PlatformChargebackLogic.t() | nil,
          reference: String.t() | nil,
          splits: [AdyenEx.Payment.V68.Split.t()] | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :additionalData,
    :merchantAccount,
    :modificationAmount,
    :mpiData,
    :originalMerchantReference,
    :originalReference,
    :platformChargebackLogic,
    :reference,
    :splits,
    :tenderReference,
    :uniqueTerminalId
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      additionalData: :map,
      merchantAccount: :string,
      modificationAmount: {AdyenEx.Payment.V68.Amount, :t},
      mpiData: {AdyenEx.Payment.V68.ThreeDSecureData, :t},
      originalMerchantReference: :string,
      originalReference: :string,
      platformChargebackLogic: {AdyenEx.Payment.V68.PlatformChargebackLogic, :t},
      reference: :string,
      splits: [{AdyenEx.Payment.V68.Split, :t}],
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
