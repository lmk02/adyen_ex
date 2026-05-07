defmodule AdyenEx.LegalEntity.V4.PCIQuestionnaires do
  @moduledoc """
  Provides API endpoints related to pci questionnaires
  """

  @default_client AdyenEx.Client

  @doc """
  Get PCI questionnaire details

  Get a list of signed PCI questionnaires.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_legal_entities_id_pci_questionnaires(id :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.LegalEntity.V4.GetPciQuestionnaireInfosResponse.t()}
          | {:error, AdyenEx.LegalEntity.V4.ServiceError.t()}
  def get_legal_entities_id_pci_questionnaires(id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id],
      call: {AdyenEx.LegalEntity.V4.PCIQuestionnaires, :get_legal_entities_id_pci_questionnaires},
      url: "/legalEntities/#{id}/pciQuestionnaires",
      method: :get,
      response: [
        {200, {AdyenEx.LegalEntity.V4.GetPciQuestionnaireInfosResponse, :t}},
        {400, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {401, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {403, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {422, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {500, {AdyenEx.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get PCI questionnaire

  Returns the signed PCI questionnaire.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.

  """
  @spec get_legal_entities_id_pci_questionnaires_pciid(
          id :: String.t(),
          pciid :: String.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.LegalEntity.V4.GetPciQuestionnaireResponse.t()}
          | {:error, AdyenEx.LegalEntity.V4.ServiceError.t()}
  def get_legal_entities_id_pci_questionnaires_pciid(id, pciid, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, pciid: pciid],
      call:
        {AdyenEx.LegalEntity.V4.PCIQuestionnaires,
         :get_legal_entities_id_pci_questionnaires_pciid},
      url: "/legalEntities/#{id}/pciQuestionnaires/#{pciid}",
      method: :get,
      response: [
        {200, {AdyenEx.LegalEntity.V4.GetPciQuestionnaireResponse, :t}},
        {400, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {401, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {403, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {422, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {500, {AdyenEx.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Generate PCI questionnaire

  Generates the required PCI questionnaires based on the user's [salesChannel](https://docs.adyen.com/api-explorer/#/legalentity/latest/post/businessLines__reqParam_salesChannels).

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities_id_pci_questionnaires_generate_pci_templates(
          id :: String.t(),
          body :: AdyenEx.LegalEntity.V4.GeneratePciDescriptionRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.LegalEntity.V4.GeneratePciDescriptionResponse.t()}
          | {:error, AdyenEx.LegalEntity.V4.ServiceError.t()}
  def post_legal_entities_id_pci_questionnaires_generate_pci_templates(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call:
        {AdyenEx.LegalEntity.V4.PCIQuestionnaires,
         :post_legal_entities_id_pci_questionnaires_generate_pci_templates},
      url: "/legalEntities/#{id}/pciQuestionnaires/generatePciTemplates",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.LegalEntity.V4.GeneratePciDescriptionRequest, :t}}],
      response: [
        {200, {AdyenEx.LegalEntity.V4.GeneratePciDescriptionResponse, :t}},
        {400, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {401, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {403, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {422, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {500, {AdyenEx.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Sign PCI questionnaire

  Signs the required PCI questionnaire.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities_id_pci_questionnaires_sign_pci_templates(
          id :: String.t(),
          body :: AdyenEx.LegalEntity.V4.PciSigningRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.LegalEntity.V4.PciSigningResponse.t()}
          | {:error, AdyenEx.LegalEntity.V4.ServiceError.t()}
  def post_legal_entities_id_pci_questionnaires_sign_pci_templates(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call:
        {AdyenEx.LegalEntity.V4.PCIQuestionnaires,
         :post_legal_entities_id_pci_questionnaires_sign_pci_templates},
      url: "/legalEntities/#{id}/pciQuestionnaires/signPciTemplates",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.LegalEntity.V4.PciSigningRequest, :t}}],
      response: [
        {200, {AdyenEx.LegalEntity.V4.PciSigningResponse, :t}},
        {400, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {401, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {403, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {422, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {500, {AdyenEx.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Calculate PCI status of a legal entity

  Calculate PCI status of a legal entity.

  Requests to this endpoint are subject to rate limits:

  - Live environments: 700 requests per 5 seconds.

  - Test environments: 200 requests per 5 seconds.

  - Failed requests are subject to a limit of 5 failures per 10 seconds.


  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_legal_entities_id_pci_questionnaires_signing_required(
          id :: String.t(),
          body :: AdyenEx.LegalEntity.V4.CalculatePciStatusRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.LegalEntity.V4.CalculatePciStatusResponse.t()}
          | {:error, AdyenEx.LegalEntity.V4.ServiceError.t()}
  def post_legal_entities_id_pci_questionnaires_signing_required(id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [id: id, body: body],
      call:
        {AdyenEx.LegalEntity.V4.PCIQuestionnaires,
         :post_legal_entities_id_pci_questionnaires_signing_required},
      url: "/legalEntities/#{id}/pciQuestionnaires/signingRequired",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.LegalEntity.V4.CalculatePciStatusRequest, :t}}],
      response: [
        {200, {AdyenEx.LegalEntity.V4.CalculatePciStatusResponse, :t}},
        {400, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {401, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {403, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {422, {AdyenEx.LegalEntity.V4.ServiceError, :t}},
        {500, {AdyenEx.LegalEntity.V4.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
