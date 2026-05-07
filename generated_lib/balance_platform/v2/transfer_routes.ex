defmodule AdyenEx.BalancePlatform.V2.TransferRoutes do
  @moduledoc """
  Provides API endpoint related to transfer routes
  """

  @default_client AdyenEx.Client

  @doc """
  Calculate transfer routes

  Returns available transfer routes based on a combination of transfer `country`, `currency`, `counterparty`, and `priorities`. Use this endpoint to find optimal transfer priorities and associated requirements before you [make a transfer](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_transfer_routes_calculate(
          body :: AdyenEx.BalancePlatform.V2.TransferRouteRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.BalancePlatform.V2.TransferRouteResponse.t()}
          | {:error, AdyenEx.BalancePlatform.V2.RestServiceError.t()}
  def post_transfer_routes_calculate(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.BalancePlatform.V2.TransferRoutes, :post_transfer_routes_calculate},
      url: "/transferRoutes/calculate",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.BalancePlatform.V2.TransferRouteRequest, :t}}],
      response: [
        {200, {AdyenEx.BalancePlatform.V2.TransferRouteResponse, :t}},
        {401, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {403, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {422, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {500, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
