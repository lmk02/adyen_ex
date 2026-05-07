defmodule AdyenEx.Checkout.V70.PaymentValidationsNameResponse do
  @moduledoc """
  Provides struct and type for a PaymentValidationsNameResponse
  """

  @type t :: %__MODULE__{
          rawResponse: AdyenEx.Checkout.V70.PaymentValidationsNameResultRawResponse.t() | nil,
          result: AdyenEx.Checkout.V70.PaymentValidationsNameResultResponse.t() | nil,
          status: String.t() | nil
        }

  defstruct [:rawResponse, :result, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      rawResponse: {AdyenEx.Checkout.V70.PaymentValidationsNameResultRawResponse, :t},
      result: {AdyenEx.Checkout.V70.PaymentValidationsNameResultResponse, :t},
      status: {:enum, ["notPerformed", "notSupported", "performed"]}
    ]
  end
end
