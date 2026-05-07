defmodule AdyenEx.Checkout.V46.PaymentCaptureRequest do
  @moduledoc """
  Provides struct and type for a PaymentCaptureRequest
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Checkout.V46.Amount.t(),
          applicationInfo: AdyenEx.Checkout.V46.ApplicationInfo.t() | nil,
          lineItems: [AdyenEx.Checkout.V46.LineItem.t()] | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil,
          splits: [AdyenEx.Checkout.V46.Split.t()] | nil
        }

  defstruct [:amount, :applicationInfo, :lineItems, :merchantAccount, :reference, :splits]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Checkout.V46.Amount, :t},
      applicationInfo: {AdyenEx.Checkout.V46.ApplicationInfo, :t},
      lineItems: [{AdyenEx.Checkout.V46.LineItem, :t}],
      merchantAccount: :string,
      reference: :string,
      splits: [{AdyenEx.Checkout.V46.Split, :t}]
    ]
  end
end
