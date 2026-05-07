defmodule AdyenEx.BalancePlatform.V1.Platform do
  @moduledoc """
  Provides API endpoints related to platform
  """

  @default_client AdyenEx.Client

  @doc """
  Get a balance platform

  Returns a balance platform.
  """
  @spec get_balance_platforms_id(id :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.BalancePlatform.V1.BalancePlatform.t()}
          | {:error, AdyenEx.BalancePlatform.V1.RestServiceError.t()}
  def get_balance_platforms_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {AdyenEx.BalancePlatform.V1.Platform, :get_balance_platforms_id},
      url: "/balancePlatforms/#{id}",
      method: :get,
      response: [
        {200, {AdyenEx.BalancePlatform.V1.BalancePlatform, :t}},
        {400, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}},
        {401, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}},
        {403, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}},
        {422, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}},
        {500, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all account holders under a balance platform

  Returns a paginated list of all the account holders that belong to the balance platform. To fetch multiple pages, use the query parameters. 

  For example, to limit the page to 5 account holders and to skip the first 20, use `/balancePlatforms/{id}/accountHolders?limit=5&offset=20`.

  ## Options

    * `offset`: The number of items that you want to skip.
    * `limit`: The number of items returned per page, maximum 100 items. By default, the response returns 10 items per page.

  """
  @spec get_balance_platforms_id_account_holders(id :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.BalancePlatform.V1.PaginatedAccountHoldersResponse.t()}
          | {:error, AdyenEx.BalancePlatform.V1.RestServiceError.t()}
  def get_balance_platforms_id_account_holders(id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :offset])

    client.request(%{
      args: [id: id],
      call: {AdyenEx.BalancePlatform.V1.Platform, :get_balance_platforms_id_account_holders},
      url: "/balancePlatforms/#{id}/accountHolders",
      method: :get,
      query: query,
      response: [
        {200, {AdyenEx.BalancePlatform.V1.PaginatedAccountHoldersResponse, :t}},
        {400, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}},
        {401, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}},
        {403, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}},
        {422, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}},
        {500, {AdyenEx.BalancePlatform.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
