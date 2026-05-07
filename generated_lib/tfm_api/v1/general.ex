defmodule AdyenEx.TfmAPI.V1.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client AdyenEx.Client

  @doc """
  Assign terminals

  Assigns one or more payment terminals to a merchant account or a store. You can also use this endpoint to reassign terminals between merchant accounts or stores, and to unassign a terminal and return it to company inventory.

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_assign_terminals(
          body :: AdyenEx.TfmAPI.V1.AssignTerminalsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.TfmAPI.V1.AssignTerminalsResponse.t()}
          | {:error, AdyenEx.TfmAPI.V1.ServiceError.t()}
  def post_assign_terminals(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.TfmAPI.V1.General, :post_assign_terminals},
      url: "/assignTerminals",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.TfmAPI.V1.AssignTerminalsRequest, :t}}],
      response: [
        {200, {AdyenEx.TfmAPI.V1.AssignTerminalsResponse, :t}},
        {400, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {401, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {403, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {422, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {500, {AdyenEx.TfmAPI.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the account or store of a terminal

  Returns the company account, merchant account, or store that a payment terminal is assigned to.

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_find_terminal(body :: AdyenEx.TfmAPI.V1.FindTerminalRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.TfmAPI.V1.FindTerminalResponse.t()}
          | {:error, AdyenEx.TfmAPI.V1.ServiceError.t()}
  def post_find_terminal(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.TfmAPI.V1.General, :post_find_terminal},
      url: "/findTerminal",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.TfmAPI.V1.FindTerminalRequest, :t}}],
      response: [
        {200, {AdyenEx.TfmAPI.V1.FindTerminalResponse, :t}},
        {400, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {401, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {403, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {422, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {500, {AdyenEx.TfmAPI.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the stores of an account

  Returns a list of stores associated with a company account or a merchant account, including the status of each store.

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_stores_under_account(
          body :: AdyenEx.TfmAPI.V1.GetStoresUnderAccountRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.TfmAPI.V1.GetStoresUnderAccountResponse.t()}
          | {:error, AdyenEx.TfmAPI.V1.ServiceError.t()}
  def post_get_stores_under_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.TfmAPI.V1.General, :post_get_stores_under_account},
      url: "/getStoresUnderAccount",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.TfmAPI.V1.GetStoresUnderAccountRequest, :t}}],
      response: [
        {200, {AdyenEx.TfmAPI.V1.GetStoresUnderAccountResponse, :t}},
        {400, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {401, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {403, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {422, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {500, {AdyenEx.TfmAPI.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the details of a terminal

  Returns the details of a payment terminal, including where the terminal is assigned to. The response returns the same details that are provided in the terminal list in your Customer Area and in the Terminal Fleet report.

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_terminal_details(
          body :: AdyenEx.TfmAPI.V1.GetTerminalDetailsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.TfmAPI.V1.GetTerminalDetailsResponse.t()}
          | {:error, AdyenEx.TfmAPI.V1.ServiceError.t()}
  def post_get_terminal_details(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.TfmAPI.V1.General, :post_get_terminal_details},
      url: "/getTerminalDetails",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.TfmAPI.V1.GetTerminalDetailsRequest, :t}}],
      response: [
        {200, {AdyenEx.TfmAPI.V1.GetTerminalDetailsResponse, :t}},
        {400, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {401, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {403, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {422, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {500, {AdyenEx.TfmAPI.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get the list of terminals

  Returns a list of payment terminals associated with a company account, merchant account, or store. The response shows whether the terminals are in the inventory, or in-store (ready for boarding or already boarded).

  >From January 1, 2025 POS Terminal Management API is deprecated and support stops on April 1, 2025. To automate the management of your terminal fleet, use our [Management API](https://docs.adyen.com/api-explorer/Management/latest/overview).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_terminals_under_account(
          body :: AdyenEx.TfmAPI.V1.GetTerminalsUnderAccountRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.TfmAPI.V1.GetTerminalsUnderAccountResponse.t()}
          | {:error, AdyenEx.TfmAPI.V1.ServiceError.t()}
  def post_get_terminals_under_account(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.TfmAPI.V1.General, :post_get_terminals_under_account},
      url: "/getTerminalsUnderAccount",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.TfmAPI.V1.GetTerminalsUnderAccountRequest, :t}}],
      response: [
        {200, {AdyenEx.TfmAPI.V1.GetTerminalsUnderAccountResponse, :t}},
        {400, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {401, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {403, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {422, {AdyenEx.TfmAPI.V1.ServiceError, :t}},
        {500, {AdyenEx.TfmAPI.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
