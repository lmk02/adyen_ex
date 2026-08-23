defmodule AdyenEx.DocumentCollector.V1.Documents do
  @moduledoc """
  Provides API endpoint related to documents
  """

  @default_client AdyenEx.Client

  @doc """
  Upload a document

  Uploads a document for a merchant account.

  ## Request Body

  **Content Types**: `multipart/form-data`
  """
  @spec post_cross_border_invoices(body :: map, opts :: keyword) ::
          {:ok, AdyenEx.DocumentCollector.V1.DocumentUploadResponse.t()}
          | {:error, AdyenEx.DocumentCollector.V1.DefaultErrorResponseEntity.t()}
  def post_cross_border_invoices(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.DocumentCollector.V1.Documents, :post_cross_border_invoices},
      url: "/crossBorderInvoices",
      body: body,
      method: :post,
      request: [{"multipart/form-data", :map}],
      response: [
        {201, {AdyenEx.DocumentCollector.V1.DocumentUploadResponse, :t}},
        {400, {AdyenEx.DocumentCollector.V1.DefaultErrorResponseEntity, :t}},
        {401, {AdyenEx.DocumentCollector.V1.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.DocumentCollector.V1.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.DocumentCollector.V1.DefaultErrorResponseEntity, :t}},
        {500, {AdyenEx.DocumentCollector.V1.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
