defmodule AdyenEx.Management.V1.ClientKeyMerchantLevel do
  @moduledoc """
  Provides API endpoint related to client key merchant level
  """

  @default_client AdyenEx.Client

  @doc """
  Generate new client key

  Returns a new [client key](https://docs.adyen.com/development-resources/client-side-authentication#how-it-works) for the API credential identified in the path. You can use the new client key a few minutes after generating it. The old client key stops working 24 hours after generating a new one.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—API credentials read and write
  """
  @spec post_merchants_merchant_id_api_credentials_api_credential_id_generate_client_key(
          merchantId :: String.t(),
          apiCredentialId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Management.V1.GenerateClientKeyResponse.t()}
          | {:error, AdyenEx.Management.V1.RestServiceError.t()}
  def post_merchants_merchant_id_api_credentials_api_credential_id_generate_client_key(
        merchantId,
        apiCredentialId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, apiCredentialId: apiCredentialId],
      call:
        {AdyenEx.Management.V1.ClientKeyMerchantLevel,
         :post_merchants_merchant_id_api_credentials_api_credential_id_generate_client_key},
      url: "/merchants/#{merchantId}/apiCredentials/#{apiCredentialId}/generateClientKey",
      method: :post,
      response: [
        {200, {AdyenEx.Management.V1.GenerateClientKeyResponse, :t}},
        {204, :null},
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
