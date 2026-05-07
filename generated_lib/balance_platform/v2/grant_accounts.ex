defmodule AdyenEx.BalancePlatform.V2.GrantAccounts do
  @moduledoc """
  Provides API endpoint related to grant accounts
  """

  @default_client AdyenEx.Client

  @doc """
  Get a grant account

  Returns the details of the [grant account](https://docs.adyen.com/platforms/capital#grant-account).
  """
  @spec get_grant_accounts_id(id :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.BalancePlatform.V2.CapitalGrantAccount.t()}
          | {:error, AdyenEx.BalancePlatform.V2.RestServiceError.t()}
  def get_grant_accounts_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {AdyenEx.BalancePlatform.V2.GrantAccounts, :get_grant_accounts_id},
      url: "/grantAccounts/#{id}",
      method: :get,
      response: [
        {200, {AdyenEx.BalancePlatform.V2.CapitalGrantAccount, :t}},
        {400, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {401, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {403, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {422, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {500, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
