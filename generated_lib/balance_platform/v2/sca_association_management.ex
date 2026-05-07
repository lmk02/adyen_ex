defmodule AdyenEx.BalancePlatform.V2.SCAAssociationManagement do
  @moduledoc """
  Provides API endpoints related to sca association management
  """

  @default_client AdyenEx.Client

  @doc """
  Delete association to devices

  Deletes one or more SCA associations for a device.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec delete_sca_associations(
          body :: AdyenEx.BalancePlatform.V2.RemoveAssociationRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def delete_sca_associations(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.BalancePlatform.V2.SCAAssociationManagement, :delete_sca_associations},
      url: "/scaAssociations",
      body: body,
      method: :delete,
      request: [{"application/json", {AdyenEx.BalancePlatform.V2.RemoveAssociationRequest, :t}}],
      response: [
        {204, :null},
        {401, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of devices associated with an entity

  Returns a paginated list of the SCA devices associated with a specific entity.

  ## Options

    * `entityType`: The type of entity you want to retrieve a list of associations for. 
      
      Possible values: **accountHolder**, **legalEntity** or **paymentInstrument**.
    * `entityId`: The unique identifier of the entity.
    * `pageSize`: The number of items to have on a page. 
      
      Default: **5**.
    * `pageNumber`: The index of the page to retrieve. The index of the first page is **0** (zero). 
      
      Default:  **0**.

  """
  @spec get_sca_associations(opts :: keyword) ::
          {:ok, AdyenEx.BalancePlatform.V2.ListAssociationsResponse.t()}
          | {:error, AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def get_sca_associations(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:entityId, :entityType, :pageNumber, :pageSize])

    client.request(%{
      args: [],
      call: {AdyenEx.BalancePlatform.V2.SCAAssociationManagement, :get_sca_associations},
      url: "/scaAssociations",
      method: :get,
      query: query,
      response: [
        {200, {AdyenEx.BalancePlatform.V2.ListAssociationsResponse, :t}},
        {400, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {401, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Approve a pending approval association

  Approves a previously created association that is in a pending state.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_sca_associations(
          body :: AdyenEx.BalancePlatform.V2.ApproveAssociationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.BalancePlatform.V2.ApproveAssociationResponse.t()}
          | {:error, AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity.t()}
  def patch_sca_associations(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.BalancePlatform.V2.SCAAssociationManagement, :patch_sca_associations},
      url: "/scaAssociations",
      body: body,
      method: :patch,
      request: [{"application/json", {AdyenEx.BalancePlatform.V2.ApproveAssociationRequest, :t}}],
      response: [
        {200, {AdyenEx.BalancePlatform.V2.ApproveAssociationResponse, :t}},
        {401, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}},
        {500, {AdyenEx.BalancePlatform.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
