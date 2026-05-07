defmodule AdyenEx.StoredValue.V46.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client AdyenEx.Client

  @doc """
  Changes the status of the payment method.

  Changes the status of the provided payment method to the specified status.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_change_status(
          body :: AdyenEx.StoredValue.V46.StoredValueStatusChangeRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.StoredValue.V46.StoredValueStatusChangeResponse.t()}
          | {:error, AdyenEx.StoredValue.V46.ServiceError.t()}
  def post_change_status(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.StoredValue.V46.General, :post_change_status},
      url: "/changeStatus",
      body: body,
      method: :post,
      request: [
        {"application/json", {AdyenEx.StoredValue.V46.StoredValueStatusChangeRequest, :t}}
      ],
      response: [
        {200, {AdyenEx.StoredValue.V46.StoredValueStatusChangeResponse, :t}},
        {400, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {401, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {403, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {500, {AdyenEx.StoredValue.V46.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Checks the balance.

  Checks the balance of the provided payment method.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_check_balance(
          body :: AdyenEx.StoredValue.V46.StoredValueBalanceCheckRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.StoredValue.V46.StoredValueBalanceCheckResponse.t()}
          | {:error, AdyenEx.StoredValue.V46.ServiceError.t()}
  def post_check_balance(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.StoredValue.V46.General, :post_check_balance},
      url: "/checkBalance",
      body: body,
      method: :post,
      request: [
        {"application/json", {AdyenEx.StoredValue.V46.StoredValueBalanceCheckRequest, :t}}
      ],
      response: [
        {200, {AdyenEx.StoredValue.V46.StoredValueBalanceCheckResponse, :t}},
        {400, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {401, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {403, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {500, {AdyenEx.StoredValue.V46.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Issues a new card.

  Issues a new card of the given payment method.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_issue(body :: AdyenEx.StoredValue.V46.StoredValueIssueRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.StoredValue.V46.StoredValueIssueResponse.t()}
          | {:error, AdyenEx.StoredValue.V46.ServiceError.t()}
  def post_issue(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.StoredValue.V46.General, :post_issue},
      url: "/issue",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.StoredValue.V46.StoredValueIssueRequest, :t}}],
      response: [
        {200, {AdyenEx.StoredValue.V46.StoredValueIssueResponse, :t}},
        {400, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {401, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {403, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {500, {AdyenEx.StoredValue.V46.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Loads the payment method.

  Loads the payment method with the specified funds.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_load(body :: AdyenEx.StoredValue.V46.StoredValueLoadRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.StoredValue.V46.StoredValueLoadResponse.t()}
          | {:error, AdyenEx.StoredValue.V46.ServiceError.t()}
  def post_load(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.StoredValue.V46.General, :post_load},
      url: "/load",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.StoredValue.V46.StoredValueLoadRequest, :t}}],
      response: [
        {200, {AdyenEx.StoredValue.V46.StoredValueLoadResponse, :t}},
        {400, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {401, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {403, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {500, {AdyenEx.StoredValue.V46.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Merge the balance of two cards.

  Increases the balance of the paymentmethod by the full amount left on the source paymentmethod

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merge_balance(
          body :: AdyenEx.StoredValue.V46.StoredValueBalanceMergeRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.StoredValue.V46.StoredValueBalanceMergeResponse.t()}
          | {:error, AdyenEx.StoredValue.V46.ServiceError.t()}
  def post_merge_balance(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.StoredValue.V46.General, :post_merge_balance},
      url: "/mergeBalance",
      body: body,
      method: :post,
      request: [
        {"application/json", {AdyenEx.StoredValue.V46.StoredValueBalanceMergeRequest, :t}}
      ],
      response: [
        {200, {AdyenEx.StoredValue.V46.StoredValueBalanceMergeResponse, :t}},
        {400, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {401, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {403, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {500, {AdyenEx.StoredValue.V46.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Voids a transaction.

  Voids the referenced stored value transaction.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_void_transaction(
          body :: AdyenEx.StoredValue.V46.StoredValueVoidRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.StoredValue.V46.StoredValueVoidResponse.t()}
          | {:error, AdyenEx.StoredValue.V46.ServiceError.t()}
  def post_void_transaction(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.StoredValue.V46.General, :post_void_transaction},
      url: "/voidTransaction",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.StoredValue.V46.StoredValueVoidRequest, :t}}],
      response: [
        {200, {AdyenEx.StoredValue.V46.StoredValueVoidResponse, :t}},
        {400, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {401, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {403, {AdyenEx.StoredValue.V46.ServiceError, :t}},
        {500, {AdyenEx.StoredValue.V46.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
