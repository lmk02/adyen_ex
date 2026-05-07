defmodule AdyenEx.Checkout.V70.PaymentDetailsRequest do
  @moduledoc """
  Provides struct and type for a PaymentDetailsRequest
  """

  @type t :: %__MODULE__{
          authenticationData: AdyenEx.Checkout.V70.DetailsRequestAuthenticationData.t() | nil,
          details: AdyenEx.Checkout.V70.PaymentCompletionDetails.t(),
          paymentData: String.t() | nil,
          threeDSAuthenticationOnly: boolean | nil
        }

  defstruct [:authenticationData, :details, :paymentData, :threeDSAuthenticationOnly]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authenticationData: {AdyenEx.Checkout.V70.DetailsRequestAuthenticationData, :t},
      details: {AdyenEx.Checkout.V70.PaymentCompletionDetails, :t},
      paymentData: :string,
      threeDSAuthenticationOnly: :boolean
    ]
  end
end
