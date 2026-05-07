defmodule AdyenEx.Management.V1.APIKeyCompanyLevel do
  @moduledoc """
  Provides API endpoint related to api key company level
  """

  @default_client AdyenEx.Client

  @doc """
  Generate new API key

  Returns a new API key for the API credential. You can use the new API key a few minutes after generating it. The old API key stops working 24 hours after generating a new one.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write
  """
  @spec post_companies_company_id_api_credentials_api_credential_id_generate_api_key(
          companyId :: String.t(),
          apiCredentialId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Management.V1.GenerateApiKeyResponse.t()}
          | {:error, AdyenEx.Management.V1.RestServiceError.t()}
  def post_companies_company_id_api_credentials_api_credential_id_generate_api_key(
        companyId,
        apiCredentialId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId, apiCredentialId: apiCredentialId],
      call:
        {AdyenEx.Management.V1.APIKeyCompanyLevel,
         :post_companies_company_id_api_credentials_api_credential_id_generate_api_key},
      url: "/companies/#{companyId}/apiCredentials/#{apiCredentialId}/generateApiKey",
      method: :post,
      response: [
        {200, {AdyenEx.Management.V1.GenerateApiKeyResponse, :t}},
        {400, {AdyenEx.Management.V1.RestServiceError, :t}},
        {401, {AdyenEx.Management.V1.RestServiceError, :t}},
        {403, {AdyenEx.Management.V1.RestServiceError, :t}},
        {422, {AdyenEx.Management.V1.RestServiceError, :t}},
        {500, {AdyenEx.Management.V1.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
