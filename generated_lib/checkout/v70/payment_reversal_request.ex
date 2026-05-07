defmodule AdyenEx.Checkout.V70.PaymentReversalRequest do
  @moduledoc """
  Provides struct and type for a PaymentReversalRequest
  """

  @type t :: %__MODULE__{
          applicationInfo: AdyenEx.Checkout.V70.ApplicationInfo.t() | nil,
          enhancedSchemeData: AdyenEx.Checkout.V70.EnhancedSchemeData.t() | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil
        }

  defstruct [:applicationInfo, :enhancedSchemeData, :merchantAccount, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applicationInfo: {AdyenEx.Checkout.V70.ApplicationInfo, :t},
      enhancedSchemeData: {AdyenEx.Checkout.V70.EnhancedSchemeData, :t},
      merchantAccount: :string,
      reference: :string
    ]
  end
end
