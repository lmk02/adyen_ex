defmodule AdyenEx.Transaction.V2.DisputeAttachments do
  @moduledoc """
  Provides API endpoints related to dispute attachments
  """

  @default_client AdyenEx.Client

  @doc """
  Delete attachment from a dispute

  Removes the attachment from the raised dispute. Adyen may keep this file for compliance purposes.
  """
  @spec delete_disputes_dispute_id_attachments_attachment_id(
          disputeId :: String.t(),
          attachmentId :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, AdyenEx.Transaction.V2.DefaultErrorResponseEntity.t()}
  def delete_disputes_dispute_id_attachments_attachment_id(disputeId, attachmentId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [disputeId: disputeId, attachmentId: attachmentId],
      call:
        {AdyenEx.Transaction.V2.DisputeAttachments,
         :delete_disputes_dispute_id_attachments_attachment_id},
      url: "/disputes/#{disputeId}/attachments/#{attachmentId}",
      method: :delete,
      response: [
        {204, :null},
        {401, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get all attachments linked to a raised dispute

  Get a list of attachments associated with a dispute ID.
  """
  @spec get_disputes_dispute_id_attachments(disputeId :: String.t(), opts :: keyword) ::
          {:ok, [AdyenEx.Transaction.V2.DisputeAttachment.t()]}
          | {:error, AdyenEx.Transaction.V2.DefaultErrorResponseEntity.t()}
  def get_disputes_dispute_id_attachments(disputeId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [disputeId: disputeId],
      call: {AdyenEx.Transaction.V2.DisputeAttachments, :get_disputes_dispute_id_attachments},
      url: "/disputes/#{disputeId}/attachments",
      method: :get,
      response: [
        {200, [{AdyenEx.Transaction.V2.DisputeAttachment, :t}]},
        {401, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get an attachment

  Search for a single attachment, providing the specific dispute ID and attachment ID.
  """
  @spec get_disputes_dispute_id_attachments_attachment_id(
          disputeId :: String.t(),
          attachmentId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Transaction.V2.DisputeAttachment.t()}
          | {:error, AdyenEx.Transaction.V2.DefaultErrorResponseEntity.t()}
  def get_disputes_dispute_id_attachments_attachment_id(disputeId, attachmentId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [disputeId: disputeId, attachmentId: attachmentId],
      call:
        {AdyenEx.Transaction.V2.DisputeAttachments,
         :get_disputes_dispute_id_attachments_attachment_id},
      url: "/disputes/#{disputeId}/attachments/#{attachmentId}",
      method: :get,
      response: [
        {200, {AdyenEx.Transaction.V2.DisputeAttachment, :t}},
        {401, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Add an attachment to a dispute

  Add supporting information as an attachment for the raised dispute. Upload receipts, communication, or any other documentation to support the dispute.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_disputes_dispute_id_attachments(
          disputeId :: String.t(),
          body :: AdyenEx.Transaction.V2.DisputeAttachment.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Transaction.V2.AttachDocumentResponse.t()}
          | {:error, AdyenEx.Transaction.V2.DefaultErrorResponseEntity.t()}
  def post_disputes_dispute_id_attachments(disputeId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [disputeId: disputeId, body: body],
      call: {AdyenEx.Transaction.V2.DisputeAttachments, :post_disputes_dispute_id_attachments},
      url: "/disputes/#{disputeId}/attachments",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Transaction.V2.DisputeAttachment, :t}}],
      response: [
        {200, {AdyenEx.Transaction.V2.AttachDocumentResponse, :t}},
        {401, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.Transaction.V2.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
