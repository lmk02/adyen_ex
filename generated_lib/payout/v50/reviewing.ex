defmodule AdyenEx.Payout.V50.Reviewing do
  @moduledoc """
  Provides API endpoints related to reviewing
  """

  @default_client AdyenEx.Client

  @doc """
  Confirm a payout

  > This endpoint is **deprecated** and no longer supports new integrations. Do one of the following:
  >- If you are building a new integration, use the [Transfers API](https://docs.adyen.com/api-explorer/transfers/latest/overview) instead.
  > - If you are already using the Payout API, reach out to your Adyen contact to learn how to migrate to the Transfers API.
  >
  > With the Transfers API, you can:
  > - Handle multiple payout use cases with a single API.
  > - Use new payout functionalities, such as instant payouts to bank accounts.
  > - Receive webhooks with more details and defined transfer states.
  >
  > For more information about the payout features of the Transfers API, see our [Payouts](https://docs.adyen.com/payouts/payout-service) documentation.

  Confirms a previously submitted payout.

  To cancel a payout, use the `/declineThirdParty` endpoint.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_confirm_third_party(body :: AdyenEx.Payout.V50.ModifyRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Payout.V50.ModifyResponse.t()}
          | {:error, AdyenEx.Payout.V50.ServiceError.t()}
  def post_confirm_third_party(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Payout.V50.Reviewing, :post_confirm_third_party},
      url: "/confirmThirdParty",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Payout.V50.ModifyRequest, :t}}],
      response: [
        {200, {AdyenEx.Payout.V50.ModifyResponse, :t}},
        {400, {AdyenEx.Payout.V50.ServiceError, :t}},
        {401, {AdyenEx.Payout.V50.ServiceError, :t}},
        {403, {AdyenEx.Payout.V50.ServiceError, :t}},
        {422, {AdyenEx.Payout.V50.ServiceError, :t}},
        {500, {AdyenEx.Payout.V50.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel a payout

  > This endpoint is **deprecated** and no longer supports new integrations. Do one of the following:
  >- If you are building a new integration, use the [Transfers API](https://docs.adyen.com/api-explorer/transfers/latest/overview) instead.
  > - If you are already using the Payout API, reach out to your Adyen contact to learn how to migrate to the Transfers API.
  >
  > With the Transfers API, you can:
  > - Handle multiple payout use cases with a single API.
  > - Use new payout functionalities, such as instant payouts to bank accounts.
  > - Receive webhooks with more details and defined transfer states.
  >
  > For more information about the payout features of the Transfers API, see our [Payouts](https://docs.adyen.com/payouts/payout-service) documentation.

  Cancels a previously submitted payout.

  To confirm and send a payout, use the `/confirmThirdParty` endpoint.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_decline_third_party(body :: AdyenEx.Payout.V50.ModifyRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Payout.V50.ModifyResponse.t()}
          | {:error, AdyenEx.Payout.V50.ServiceError.t()}
  def post_decline_third_party(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Payout.V50.Reviewing, :post_decline_third_party},
      url: "/declineThirdParty",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Payout.V50.ModifyRequest, :t}}],
      response: [
        {200, {AdyenEx.Payout.V50.ModifyResponse, :t}},
        {400, {AdyenEx.Payout.V50.ServiceError, :t}},
        {401, {AdyenEx.Payout.V50.ServiceError, :t}},
        {403, {AdyenEx.Payout.V50.ServiceError, :t}},
        {422, {AdyenEx.Payout.V50.ServiceError, :t}},
        {500, {AdyenEx.Payout.V50.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
