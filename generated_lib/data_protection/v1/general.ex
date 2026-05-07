defmodule AdyenEx.DataProtection.V1.General do
  @moduledoc """
  Provides API endpoint related to general
  """

  @default_client AdyenEx.Client

  @doc """
  Submit a Subject Erasure Request.

  Sends the PSP reference containing the shopper data that should be deleted.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_request_subject_erasure(
          body :: AdyenEx.DataProtection.V1.SubjectErasureByPspReferenceRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.DataProtection.V1.SubjectErasureResponse.t()}
          | {:error, AdyenEx.DataProtection.V1.ServiceError.t()}
  def post_request_subject_erasure(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.DataProtection.V1.General, :post_request_subject_erasure},
      url: "/requestSubjectErasure",
      body: body,
      method: :post,
      request: [
        {"application/json", {AdyenEx.DataProtection.V1.SubjectErasureByPspReferenceRequest, :t}}
      ],
      response: [
        {200, {AdyenEx.DataProtection.V1.SubjectErasureResponse, :t}},
        {400, {AdyenEx.DataProtection.V1.ServiceError, :t}},
        {401, {AdyenEx.DataProtection.V1.ServiceError, :t}},
        {403, {AdyenEx.DataProtection.V1.ServiceError, :t}},
        {422, {AdyenEx.DataProtection.V1.ServiceError, :t}},
        {500, {AdyenEx.DataProtection.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
