defmodule AdyenEx.Checkout.V70.StandalonePaymentCancelRequest do
  @moduledoc """
  Provides struct and type for a StandalonePaymentCancelRequest
  """

  @type t :: %__MODULE__{
          applicationInfo: AdyenEx.Checkout.V70.ApplicationInfo.t() | nil,
          enhancedSchemeData: AdyenEx.Checkout.V70.EnhancedSchemeData.t() | nil,
          merchantAccount: String.t(),
          paymentReference: String.t(),
          reference: String.t() | nil
        }

  defstruct [
    :applicationInfo,
    :enhancedSchemeData,
    :merchantAccount,
    :paymentReference,
    :reference
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applicationInfo: {AdyenEx.Checkout.V70.ApplicationInfo, :t},
      enhancedSchemeData: {AdyenEx.Checkout.V70.EnhancedSchemeData, :t},
      merchantAccount: :string,
      paymentReference: :string,
      reference: :string
    ]
  end
end
