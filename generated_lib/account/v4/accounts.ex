defmodule AdyenEx.Account.V4.Accounts do
  @moduledoc """
  Provides API endpoints related to accounts
  """

  @default_client AdyenEx.Client

  @doc """
  Close an account

  Closes an account. If an account is closed, you cannot process transactions, pay out its funds, or reopen it. If payments are made to a closed account, the payments are sent to your liable account.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_close_account(body :: AdyenEx.Account.V4.CloseAccountRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Account.V4.CloseAccountResponse.t()}
          | {:error, AdyenEx.Account.V4.ServiceError.t()}
  def post_close_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Account.V4.Accounts, :post_close_account},
      url: "/closeAccount",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Account.V4.CloseAccountRequest, :t}}],
      response: [
        {200, {AdyenEx.Account.V4.CloseAccountResponse, :t}},
        {202, {AdyenEx.Account.V4.CloseAccountResponse, :t}},
        {400, {AdyenEx.Account.V4.ServiceError, :t}},
        {401, {AdyenEx.Account.V4.ServiceError, :t}},
        {403, {AdyenEx.Account.V4.ServiceError, :t}},
        {422, {AdyenEx.Account.V4.ServiceError, :t}},
        {500, {AdyenEx.Account.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create an account

  Creates an account under an account holder. An account holder can have [multiple accounts](https://docs.adyen.com/classic-platforms/account-holders-and-accounts#create-additional-accounts).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_create_account(body :: AdyenEx.Account.V4.CreateAccountRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Account.V4.CreateAccountResponse.t()}
          | {:error, AdyenEx.Account.V4.ServiceError.t()}
  def post_create_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Account.V4.Accounts, :post_create_account},
      url: "/createAccount",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Account.V4.CreateAccountRequest, :t}}],
      response: [
        {200, {AdyenEx.Account.V4.CreateAccountResponse, :t}},
        {202, {AdyenEx.Account.V4.CreateAccountResponse, :t}},
        {400, {AdyenEx.Account.V4.ServiceError, :t}},
        {401, {AdyenEx.Account.V4.ServiceError, :t}},
        {403, {AdyenEx.Account.V4.ServiceError, :t}},
        {422, {AdyenEx.Account.V4.ServiceError, :t}},
        {500, {AdyenEx.Account.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update an account

  Updates the description or payout schedule of an account.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_update_account(body :: AdyenEx.Account.V4.UpdateAccountRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Account.V4.UpdateAccountResponse.t()}
          | {:error, AdyenEx.Account.V4.ServiceError.t()}
  def post_update_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Account.V4.Accounts, :post_update_account},
      url: "/updateAccount",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Account.V4.UpdateAccountRequest, :t}}],
      response: [
        {200, {AdyenEx.Account.V4.UpdateAccountResponse, :t}},
        {202, {AdyenEx.Account.V4.UpdateAccountResponse, :t}},
        {400, {AdyenEx.Account.V4.ServiceError, :t}},
        {401, {AdyenEx.Account.V4.ServiceError, :t}},
        {403, {AdyenEx.Account.V4.ServiceError, :t}},
        {422, {AdyenEx.Account.V4.ServiceError, :t}},
        {500, {AdyenEx.Account.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
