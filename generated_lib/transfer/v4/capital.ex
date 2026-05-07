defmodule AdyenEx.Transfer.V4.Capital do
  @moduledoc """
  Provides API endpoints related to capital
  """

  @default_client AdyenEx.Client

  @doc """
  Get a capital account

  Returns a list of grants with status and outstanding balances.

  ## Options

    * `counterpartyAccountHolderId`: The counterparty account holder id.

  """
  @spec get_grants(opts :: keyword) ::
          {:ok, AdyenEx.Transfer.V4.CapitalGrants.t()}
          | {:error, AdyenEx.Transfer.V4.RestServiceError.t()}
  def get_grants(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:counterpartyAccountHolderId])

    client.request(%{
      args: [],
      call: {AdyenEx.Transfer.V4.Capital, :get_grants},
      url: "/grants",
      method: :get,
      query: query,
      response: [
        {200, {AdyenEx.Transfer.V4.CapitalGrants, :t}},
        {400, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {401, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {403, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {404, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {422, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {500, {AdyenEx.Transfer.V4.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get grant reference details

  Returns the details of a capital account specified in the path.
  """
  @spec get_grants_id(id :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.Transfer.V4.CapitalGrant.t()}
          | {:error, AdyenEx.Transfer.V4.RestServiceError.t()}
  def get_grants_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {AdyenEx.Transfer.V4.Capital, :get_grants_id},
      url: "/grants/#{id}",
      method: :get,
      response: [
        {200, {AdyenEx.Transfer.V4.CapitalGrant, :t}},
        {400, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {401, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {403, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {404, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {422, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {500, {AdyenEx.Transfer.V4.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Request a grant payout

  Requests the payout of the selected grant offer.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_grants(body :: AdyenEx.Transfer.V4.CapitalGrantInfo.t(), opts :: keyword) ::
          {:ok, AdyenEx.Transfer.V4.CapitalGrant.t()}
          | {:error, AdyenEx.Transfer.V4.RestServiceError.t()}
  def post_grants(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Transfer.V4.Capital, :post_grants},
      url: "/grants",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Transfer.V4.CapitalGrantInfo, :t}}],
      response: [
        {200, {AdyenEx.Transfer.V4.CapitalGrant, :t}},
        {400, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {401, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {403, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {404, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {422, {AdyenEx.Transfer.V4.RestServiceError, :t}},
        {500, {AdyenEx.Transfer.V4.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
