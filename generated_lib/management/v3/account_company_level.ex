defmodule AdyenEx.Management.V3.AccountCompanyLevel do
  @moduledoc """
  Provides API endpoints related to account company level
  """

  @default_client AdyenEx.Client

  @doc """
  Get a list of company accounts

  Returns the list of company accounts that your API credential has access to. The list is grouped into pages as defined by the query parameters.

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):

  * Management API—Account read

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.

  """
  @spec get_companies(opts :: keyword) ::
          {:ok, AdyenEx.Management.V3.ListCompanyResponse.t()}
          | {:error, AdyenEx.Management.V3.RestServiceError.t()}
  def get_companies(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize])

    client.request(%{
      args: [],
      call: {AdyenEx.Management.V3.AccountCompanyLevel, :get_companies},
      url: "/companies",
      method: :get,
      query: query,
      response: [
        {200, {AdyenEx.Management.V3.ListCompanyResponse, :t}},
        {400, {AdyenEx.Management.V3.RestServiceError, :t}},
        {401, {AdyenEx.Management.V3.RestServiceError, :t}},
        {403, {AdyenEx.Management.V3.RestServiceError, :t}},
        {422, {AdyenEx.Management.V3.RestServiceError, :t}},
        {500, {AdyenEx.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a company account

  Returns the company account specified in the path. Your API credential must have access to the company account. 

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Account read
  """
  @spec get_companies_company_id(companyId :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.Management.V3.Company.t()}
          | {:error, AdyenEx.Management.V3.RestServiceError.t()}
  def get_companies_company_id(companyId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [companyId: companyId],
      call: {AdyenEx.Management.V3.AccountCompanyLevel, :get_companies_company_id},
      url: "/companies/#{companyId}",
      method: :get,
      response: [
        {200, {AdyenEx.Management.V3.Company, :t}},
        {400, {AdyenEx.Management.V3.RestServiceError, :t}},
        {401, {AdyenEx.Management.V3.RestServiceError, :t}},
        {403, {AdyenEx.Management.V3.RestServiceError, :t}},
        {422, {AdyenEx.Management.V3.RestServiceError, :t}},
        {500, {AdyenEx.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of merchant accounts

  Returns the list of merchant accounts under the company account specified in the path. The list only includes merchant accounts that your API credential has access to. The list is grouped into pages as defined by the query parameters. 

  To make this request, your API credential must have the following [roles](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API—Account read

  ## Options

    * `pageNumber`: The number of the page to fetch.
    * `pageSize`: The number of items to have on a page, maximum 100. The default is 10 items on a page.

  """
  @spec get_companies_company_id_merchants(companyId :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.Management.V3.ListMerchantResponse.t()}
          | {:error, AdyenEx.Management.V3.RestServiceError.t()}
  def get_companies_company_id_merchants(companyId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:pageNumber, :pageSize])

    client.request(%{
      args: [companyId: companyId],
      call: {AdyenEx.Management.V3.AccountCompanyLevel, :get_companies_company_id_merchants},
      url: "/companies/#{companyId}/merchants",
      method: :get,
      query: query,
      response: [
        {200, {AdyenEx.Management.V3.ListMerchantResponse, :t}},
        {400, {AdyenEx.Management.V3.RestServiceError, :t}},
        {401, {AdyenEx.Management.V3.RestServiceError, :t}},
        {403, {AdyenEx.Management.V3.RestServiceError, :t}},
        {422, {AdyenEx.Management.V3.RestServiceError, :t}},
        {500, {AdyenEx.Management.V3.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
