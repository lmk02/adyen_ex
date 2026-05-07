defmodule AdyenEx.Payment.V51.TechnicalCancelRequest do
  @moduledoc """
  Provides struct and type for a TechnicalCancelRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          modificationAmount: AdyenEx.Payment.V51.Amount.t() | nil,
          mpiData: AdyenEx.Payment.V51.ThreeDSecureData.t() | nil,
          originalMerchantReference: String.t(),
          reference: String.t() | nil,
          splits: [AdyenEx.Payment.V51.Split.t()] | nil,
          tenderReference: String.t() | nil,
          uniqueTerminalId: String.t() | nil
        }

  defstruct [
    :additionalData,
    :merchantAccount,
    :modificationAmount,
    :mpiData,
    :originalMerchantReference,
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
      modificationAmount: {AdyenEx.Payment.V51.Amount, :t},
      mpiData: {AdyenEx.Payment.V51.ThreeDSecureData, :t},
      originalMerchantReference: :string,
      reference: :string,
      splits: [{AdyenEx.Payment.V51.Split, :t}],
      tenderReference: :string,
      uniqueTerminalId: :string
    ]
  end
end
