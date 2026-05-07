defmodule AdyenEx.Capital.V1.GrantAccounts do
  @moduledoc """
  Provides API endpoint related to grant accounts
  """

  @default_client AdyenEx.Client

  @doc """
  Get the information of your grant account

  Returns the details of the specified grant account. This account tracks existing grants in your marketplace or platform.
  """
  @spec get_grant_accounts_id(id :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.Capital.V1.GrantAccount.t()}
          | {:error, AdyenEx.Capital.V1.DefaultErrorResponseEntity.t()}
  def get_grant_accounts_id(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {AdyenEx.Capital.V1.GrantAccounts, :get_grant_accounts_id},
      url: "/grantAccounts/#{id}",
      method: :get,
      response: [
        {200, {AdyenEx.Capital.V1.GrantAccount, :t}},
        {404, {AdyenEx.Capital.V1.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.Capital.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
