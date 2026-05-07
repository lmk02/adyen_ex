defmodule AdyenEx.Capital.V1.DynamicOffers do
  @moduledoc """
  Provides API endpoints related to dynamic offers
  """

  @default_client AdyenEx.Client

  @doc """
  Get all available dynamic offers

  Returns a list of all [dynamic offers](https://docs.adyen.com/capital/get-grant-offers/dynamic-offers/) available for `accountHolderId` specified as a query parameter.

  ## Options

    * `accountHolderId`: The unique identifier of the account holder that the dynamic offer is for.
    * `financingType`: The type of financing that the offer is for. If the value is not specified, returns all available types.
      
      Possible values: **businessFinancing**

  """
  @spec get_dynamic_offers(opts :: keyword) ::
          {:ok, AdyenEx.Capital.V1.GetDynamicOffersResponse.t()}
          | {:error, AdyenEx.Capital.V1.DefaultErrorResponseEntity.t()}
  def get_dynamic_offers(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:accountHolderId, :financingType])

    client.request(%{
      args: [],
      call: {AdyenEx.Capital.V1.DynamicOffers, :get_dynamic_offers},
      url: "/dynamicOffers",
      method: :get,
      query: query,
      response: [
        {200, {AdyenEx.Capital.V1.GetDynamicOffersResponse, :t}},
        {422, {AdyenEx.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Calculate a preliminary offer for a selected financing amount

  Calculates a preliminary offer for the financing amount that the user selected from a [dynamic offer](https://docs.adyen.com/capital/get-grant-offers/dynamic-offers/). The preliminary offer is for informational purposes only and cannot be used to initiate a grant.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 120 requests per minute.

  - Test environments: 120 requests per minute.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_dynamic_offers_id_calculate(
          id :: String.t(),
          body :: AdyenEx.Capital.V1.CalculateGrantOfferRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Capital.V1.CalculatedGrantOffer.t()}
          | {:error, AdyenEx.Capital.V1.DefaultErrorResponseEntity.t()}
  def post_dynamic_offers_id_calculate(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {AdyenEx.Capital.V1.DynamicOffers, :post_dynamic_offers_id_calculate},
      url: "/dynamicOffers/#{id}/calculate",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Capital.V1.CalculateGrantOfferRequest, :t}}],
      response: [
        {200, {AdyenEx.Capital.V1.CalculatedGrantOffer, :t}},
        {422, {AdyenEx.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a static offer for a selected financing amount

  Creates a static offer for the financing amount that the user selected from the [dynamic offer](https://docs.adyen.com/capital/get-grant-offers/dynamic-offers/).

  Requests to this endpoint are subject to rate limits:

  - Live environments: 30 requests per minute.

  - Test environments: 30 requests per minute.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_dynamic_offers_id_grant_offer(
          id :: String.t(),
          body :: AdyenEx.Capital.V1.CreateGrantOfferRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Capital.V1.GrantOffer.t()}
          | {:error, AdyenEx.Capital.V1.DefaultErrorResponseEntity.t()}
  def post_dynamic_offers_id_grant_offer(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {AdyenEx.Capital.V1.DynamicOffers, :post_dynamic_offers_id_grant_offer},
      url: "/dynamicOffers/#{id}/grantOffer",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Capital.V1.CreateGrantOfferRequest, :t}}],
      response: [
        {200, {AdyenEx.Capital.V1.GrantOffer, :t}},
        {422, {AdyenEx.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
