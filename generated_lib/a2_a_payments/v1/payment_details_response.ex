defmodule AdyenEx.A2APayments.V1.PaymentDetailsResponse do
  @moduledoc """
  Provides struct and type for a PaymentDetailsResponse
  """

  @type t :: %__MODULE__{details: AdyenEx.A2APayments.V1.PaymentDetails.t(), token: String.t()}

  defstruct [:details, :token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [details: {AdyenEx.A2APayments.V1.PaymentDetails, :t}, token: :string]
  end
end
