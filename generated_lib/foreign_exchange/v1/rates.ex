defmodule AdyenEx.ForeignExchange.V1.Rates do
  @moduledoc """
  Provides API endpoint related to rates
  """

  @default_client AdyenEx.Client

  @doc """
  Calculate amount in a different currency

  Returns the calculated amounts and rates required to convert the currency of a transaction.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_rates_calculate(
          body :: AdyenEx.ForeignExchange.V1.CalculateRateRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.ForeignExchange.V1.CalculateRateResponse.t()}
          | {:error, AdyenEx.ForeignExchange.V1.DefaultErrorResponseEntity.t()}
  def post_rates_calculate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.ForeignExchange.V1.Rates, :post_rates_calculate},
      url: "/rates/calculate",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.ForeignExchange.V1.CalculateRateRequest, :t}}],
      response: [
        {200, {AdyenEx.ForeignExchange.V1.CalculateRateResponse, :t}},
        {401, {AdyenEx.ForeignExchange.V1.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.ForeignExchange.V1.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.ForeignExchange.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
