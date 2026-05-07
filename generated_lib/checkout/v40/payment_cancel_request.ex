defmodule AdyenEx.Checkout.V40.PaymentCancelRequest do
  @moduledoc """
  Provides struct and type for a PaymentCancelRequest
  """

  @type t :: %__MODULE__{
          applicationInfo: AdyenEx.Checkout.V40.ApplicationInfo.t() | nil,
          merchantAccount: String.t(),
          reference: String.t() | nil
        }

  defstruct [:applicationInfo, :merchantAccount, :reference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      applicationInfo: {AdyenEx.Checkout.V40.ApplicationInfo, :t},
      merchantAccount: :string,
      reference: :string
    ]
  end
end
