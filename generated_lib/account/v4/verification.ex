defmodule AdyenEx.Account.V4.Verification do
  @moduledoc """
  Provides API endpoints related to verification
  """

  @default_client AdyenEx.Client

  @doc """
  Delete bank accounts

  Deletes bank accounts associated with an account holder. 

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_bank_accounts(
          body :: AdyenEx.Account.V4.DeleteBankAccountRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Account.V4.GenericResponse.t()}
          | {:error, AdyenEx.Account.V4.ServiceError.t()}
  def post_delete_bank_accounts(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Account.V4.Verification, :post_delete_bank_accounts},
      url: "/deleteBankAccounts",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Account.V4.DeleteBankAccountRequest, :t}}],
      response: [
        {200, {AdyenEx.Account.V4.GenericResponse, :t}},
        {202, {AdyenEx.Account.V4.GenericResponse, :t}},
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
  Delete legal arrangements

  Deletes legal arrangements and/or legal arrangement entities associated with an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_legal_arrangements(
          body :: AdyenEx.Account.V4.DeleteLegalArrangementRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Account.V4.GenericResponse.t()}
          | {:error, AdyenEx.Account.V4.ServiceError.t()}
  def post_delete_legal_arrangements(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Account.V4.Verification, :post_delete_legal_arrangements},
      url: "/deleteLegalArrangements",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Account.V4.DeleteLegalArrangementRequest, :t}}],
      response: [
        {200, {AdyenEx.Account.V4.GenericResponse, :t}},
        {202, {AdyenEx.Account.V4.GenericResponse, :t}},
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
  Delete shareholders

  Deletes shareholders associated with an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_shareholders(
          body :: AdyenEx.Account.V4.DeleteShareholderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Account.V4.GenericResponse.t()}
          | {:error, AdyenEx.Account.V4.ServiceError.t()}
  def post_delete_shareholders(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Account.V4.Verification, :post_delete_shareholders},
      url: "/deleteShareholders",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Account.V4.DeleteShareholderRequest, :t}}],
      response: [
        {200, {AdyenEx.Account.V4.GenericResponse, :t}},
        {202, {AdyenEx.Account.V4.GenericResponse, :t}},
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
  Delete signatories

  Deletes signatories associated with an account holder.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_delete_signatories(
          body :: AdyenEx.Account.V4.DeleteSignatoriesRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Account.V4.GenericResponse.t()}
          | {:error, AdyenEx.Account.V4.ServiceError.t()}
  def post_delete_signatories(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Account.V4.Verification, :post_delete_signatories},
      url: "/deleteSignatories",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Account.V4.DeleteSignatoriesRequest, :t}}],
      response: [
        {200, {AdyenEx.Account.V4.GenericResponse, :t}},
        {202, {AdyenEx.Account.V4.GenericResponse, :t}},
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
  Get documents

  Returns documents that were previously uploaded for an account holder. Adyen uses the documents during the [verification process](https://docs.adyen.com/classic-platforms/verification-process).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_uploaded_documents(
          body :: AdyenEx.Account.V4.GetUploadedDocumentsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Account.V4.GetUploadedDocumentsResponse.t()}
          | {:error, AdyenEx.Account.V4.ServiceError.t()}
  def post_get_uploaded_documents(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Account.V4.Verification, :post_get_uploaded_documents},
      url: "/getUploadedDocuments",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Account.V4.GetUploadedDocumentsRequest, :t}}],
      response: [
        {200, {AdyenEx.Account.V4.GetUploadedDocumentsResponse, :t}},
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
  Upload a document

  Uploads a document for an account holder. Adyen uses the documents during the [verification process](https://docs.adyen.com/classic-platforms/verification-process).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_upload_document(
          body :: AdyenEx.Account.V4.UploadDocumentRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Account.V4.UpdateAccountHolderResponse.t()}
          | {:error, AdyenEx.Account.V4.ServiceError.t()}
  def post_upload_document(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Account.V4.Verification, :post_upload_document},
      url: "/uploadDocument",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Account.V4.UploadDocumentRequest, :t}}],
      response: [
        {200, {AdyenEx.Account.V4.UpdateAccountHolderResponse, :t}},
        {202, {AdyenEx.Account.V4.UpdateAccountHolderResponse, :t}},
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
