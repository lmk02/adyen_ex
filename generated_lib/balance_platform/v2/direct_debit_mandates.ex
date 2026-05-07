defmodule AdyenEx.BalancePlatform.V2.DirectDebitMandates do
  @moduledoc """
  Provides API endpoints related to direct debit mandates
  """

  @default_client AdyenEx.Client

  @doc """
  Get a list of mandates

  Returns a list of all [direct debit mandates](https://docs.adyen.com/business-accounts/accept-direct-debits-uk) created for a business account.

  ## Options

    * `balanceAccountId`: The unique identifier of the balance account linked to the payment instrument.
    * `paymentInstrumentId`: The unique identifier of the payment instrument linked to the mandate.
    * `cursor`: The pagination cursor returned in a previous GET `/mandates` request.

  """
  @spec get_mandates(opts :: keyword) ::
          {:ok, AdyenEx.BalancePlatform.V2.ListMandatesResponse.t()}
          | {:error, AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def get_mandates(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:balanceAccountId, :cursor, :paymentInstrumentId])

    client.request(%{
      args: [],
      call: {AdyenEx.BalancePlatform.V2.DirectDebitMandates, :get_mandates},
      url: "/mandates",
      method: :get,
      query: query,
      response: [
        {200, {AdyenEx.BalancePlatform.V2.ListMandatesResponse, :t}},
        {401, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a specific mandate

  Returns the details of the specified [direct debit mandate](https://docs.adyen.com/business-accounts/accept-direct-debits-uk).
  """
  @spec get_mandates_mandate_id(mandateId :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.BalancePlatform.V2.Mandate.t()}
          | {:error, AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def get_mandates_mandate_id(mandateId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [mandateId: mandateId],
      call: {AdyenEx.BalancePlatform.V2.DirectDebitMandates, :get_mandates_mandate_id},
      url: "/mandates/#{mandateId}",
      method: :get,
      response: [
        {200, {AdyenEx.BalancePlatform.V2.Mandate, :t}},
        {401, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Amend a mandate

  Amend the specified [direct debit mandate](https://docs.adyen.com/business-accounts/accept-direct-debits-uk).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_mandates_mandate_id(
          mandateId :: String.t(),
          body :: AdyenEx.BalancePlatform.V2.MandateUpdate.t(),
          opts :: keyword
        ) :: :ok | {:error, AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def patch_mandates_mandate_id(mandateId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [mandateId: mandateId, body: body],
      call: {AdyenEx.BalancePlatform.V2.DirectDebitMandates, :patch_mandates_mandate_id},
      url: "/mandates/#{mandateId}",
      body: body,
      method: :patch,
      request: [{"application/json", {AdyenEx.BalancePlatform.V2.MandateUpdate, :t}}],
      response: [
        {202, :null},
        {401, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Cancel a mandate

  Cancel a specified [direct debit mandate](https://docs.adyen.com/business-accounts/accept-direct-debits-uk).
  """
  @spec post_mandates_mandate_id_cancel(mandateId :: String.t(), opts :: keyword) ::
          :ok | {:error, AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def post_mandates_mandate_id_cancel(mandateId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [mandateId: mandateId],
      call: {AdyenEx.BalancePlatform.V2.DirectDebitMandates, :post_mandates_mandate_id_cancel},
      url: "/mandates/#{mandateId}/cancel",
      method: :post,
      response: [
        {202, :null},
        {401, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {404, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
