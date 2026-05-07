defmodule AdyenEx.LegalEntity.V1.TermsOfService do
  @moduledoc """
  Provides API endpoints related to terms of service
  """

  @default_client AdyenEx.Client

  @doc """
  Get Terms of Service information for a legal entity

  Returns Terms of Service information for a legal entity.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_legal_entities_id_terms_of_service_acceptance_infos(id :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.LegalEntity.V1.GetTermsOfServiceAcceptanceInfosResponse.t()}
          | {:error, AdyenEx.LegalEntity.V1.ServiceError.t()}
  def get_legal_entities_id_terms_of_service_acceptance_infos(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call:
        {AdyenEx.LegalEntity.V1.TermsOfService,
         :get_legal_entities_id_terms_of_service_acceptance_infos},
      url: "/legalEntities/#{id}/termsOfServiceAcceptanceInfos",
      method: :get,
      response: [
        {200, {AdyenEx.LegalEntity.V1.GetTermsOfServiceAcceptanceInfosResponse, :t}},
        {400, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {401, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {403, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {422, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {500, {AdyenEx.LegalEntity.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get Terms of Service status

  Returns the required types of Terms of Service that need to be accepted by a legal entity.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_legal_entities_id_terms_of_service_status(id :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.LegalEntity.V1.CalculateTermsOfServiceStatusResponse.t()}
          | {:error, AdyenEx.LegalEntity.V1.ServiceError.t()}
  def get_legal_entities_id_terms_of_service_status(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call:
        {AdyenEx.LegalEntity.V1.TermsOfService, :get_legal_entities_id_terms_of_service_status},
      url: "/legalEntities/#{id}/termsOfServiceStatus",
      method: :get,
      response: [
        {200, {AdyenEx.LegalEntity.V1.CalculateTermsOfServiceStatusResponse, :t}},
        {400, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {401, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {403, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {422, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {500, {AdyenEx.LegalEntity.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Accept Terms of Service

  Accepts Terms of Service.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_legal_entities_id_terms_of_service_termsofservicedocumentid(
          id :: String.t(),
          termsofservicedocumentid :: String.t(),
          body :: AdyenEx.LegalEntity.V1.AcceptTermsOfServiceRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.LegalEntity.V1.AcceptTermsOfServiceResponse.t()}
          | {:error, AdyenEx.LegalEntity.V1.ServiceError.t()}
  def patch_legal_entities_id_terms_of_service_termsofservicedocumentid(
        id,
        termsofservicedocumentid,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, termsofservicedocumentid: termsofservicedocumentid, body: body],
      call:
        {AdyenEx.LegalEntity.V1.TermsOfService,
         :patch_legal_entities_id_terms_of_service_termsofservicedocumentid},
      url: "/legalEntities/#{id}/termsOfService/#{termsofservicedocumentid}",
      body: body,
      method: :patch,
      request: [{"application/json", {AdyenEx.LegalEntity.V1.AcceptTermsOfServiceRequest, :t}}],
      response: [
        {200, {AdyenEx.LegalEntity.V1.AcceptTermsOfServiceResponse, :t}},
        {400, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {401, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {403, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {422, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {500, {AdyenEx.LegalEntity.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get Terms of Service document

  Returns the Terms of Service document for a legal entity.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities_id_terms_of_service(
          id :: String.t(),
          body :: AdyenEx.LegalEntity.V1.GetTermsOfServiceDocumentRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.LegalEntity.V1.GetTermsOfServiceDocumentResponse.t()}
          | {:error, AdyenEx.LegalEntity.V1.ServiceError.t()}
  def post_legal_entities_id_terms_of_service(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call: {AdyenEx.LegalEntity.V1.TermsOfService, :post_legal_entities_id_terms_of_service},
      url: "/legalEntities/#{id}/termsOfService",
      body: body,
      method: :post,
      request: [
        {"application/json", {AdyenEx.LegalEntity.V1.GetTermsOfServiceDocumentRequest, :t}}
      ],
      response: [
        {200, {AdyenEx.LegalEntity.V1.GetTermsOfServiceDocumentResponse, :t}},
        {400, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {401, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {403, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {422, {AdyenEx.LegalEntity.V1.ServiceError, :t}},
        {500, {AdyenEx.LegalEntity.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
