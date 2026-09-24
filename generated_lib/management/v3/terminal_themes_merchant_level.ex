defmodule AdyenEx.Management.V3.TerminalThemesMerchantLevel do
  @moduledoc """
  Provides API endpoints related to terminal themes merchant level
  """

  @default_client AdyenEx.Client

  @doc """
  Delete a terminal theme

  Deletes the terminal theme identified in the path. If the theme is currently in use, you must first deactivate it using a call to the `/merchants/{merchantId}/terminalThemes/unapply` endpoint before you can delete the theme. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions): 
  - Management API - Terminal themes read and write
  """
  @spec delete_merchants_merchant_id_terminal_themes_id(
          merchantId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, any}
  def delete_merchants_merchant_id_terminal_themes_id(merchantId, id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, id: id],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :delete_merchants_merchant_id_terminal_themes_id},
      url: "/merchants/#{merchantId}/terminalThemes/#{id}",
      method: :delete,
      response: [
        {204, :null},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {409, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end

  @doc """
  Delete an asset from a terminal theme

  Deletes a single asset from a terminal theme owned by the merchant account specified in the path. To identify the asset you want to remove, you must use the query parameters `type` and `model`.

  When the `type` is **logo**, deleting the asset is blocked if the theme owner is not allowed to edit logos. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions): 
  - Management API - Terminal themes read and write

  ## Options

    * `type`: The screen type or screen element that the asset is for:
      
      - **logo**: your logo. Only supported if `model` is **All**.
      - **homeScreen**: the default background screen.
      - **idleScreen**: a screensaver shown when the terminal is inactive. Only supported if `model` is **SFO1** or **M450**.
      - **afterPaymentScreen**: a screen shown after the payment is completed.
      - **shopperEngagementScreen**: a screen shown during [shopper engagement](https://docs.adyen.com/point-of-sale/shopper-engagement) requests. Only supported if `model` is **SFO1** or **M450**.
    * `model`: The Android terminal model that the asset is for. Use **All** only if the `type` is **logo**. For every other screen type specify a single Android terminal model such as **AMS1**.

  """
  @spec delete_merchants_merchant_id_terminal_themes_id_assets(
          merchantId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, any}
  def delete_merchants_merchant_id_terminal_themes_id_assets(merchantId, id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:model, :type])

    client.request(%{
      args: [merchantId: merchantId, id: id],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :delete_merchants_merchant_id_terminal_themes_id_assets},
      url: "/merchants/#{merchantId}/terminalThemes/#{id}/assets",
      method: :delete,
      query: query,
      response: [
        {204, :null},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {422, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end

  @doc """
  List terminal themes

  Returns a paginated list of terminal themes for the merchant account specified in the path. The response provides only the metadata of the themes. Assets (images and videos) are not included. To get the URLs for the assets of a specific theme, make a GET request to the `/merchants/{merchantId}/terminalThemes/{id}` endpoint 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions): 
  - Management API - Terminal themes read and write

  ## Options

    * `pageSize`: The number of themes to return per page. If not specified, the list has 10 themes per page.
    * `page`: The number of the page to fetch. If not specified, the list starts from page 1.
    * `search`: A search term to filter themes by name. The match is case-insensitive and returns any theme with a name that contains the search term.

  """
  @spec get_merchants_merchant_id_terminal_themes(merchantId :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.Management.V3.ListThemesResponse.t()} | {:error, any}
  def get_merchants_merchant_id_terminal_themes(merchantId, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:page, :pageSize, :search])

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :get_merchants_merchant_id_terminal_themes},
      url: "/merchants/#{merchantId}/terminalThemes",
      method: :get,
      query: query,
      response: [
        {200, {AdyenEx.Management.V3.ListThemesResponse, :t}},
        {400, :unknown},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {422, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end

  @doc """
  Get a terminal theme

  Returns the details of the terminal theme specified in the path. The response includes the metadata of the theme and the content delivery network (CDN) URLs for all assets that have been added to the theme. 
  The URL for the logo of the theme will lead to the Adyen logo if the theme is not associated with the permission to customize terminal logos. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions): 
  - Management API - Terminal themes read and write
  """
  @spec get_merchants_merchant_id_terminal_themes_id(
          merchantId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) :: {:ok, AdyenEx.Management.V3.ThemeWithAssetDetails.t()} | {:error, any}
  def get_merchants_merchant_id_terminal_themes_id(merchantId, id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, id: id],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :get_merchants_merchant_id_terminal_themes_id},
      url: "/merchants/#{merchantId}/terminalThemes/#{id}",
      method: :get,
      response: [
        {200, {AdyenEx.Management.V3.ThemeWithAssetDetails, :t}},
        {400, :unknown},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end

  @doc """
  Update the metadata of a terminal theme

  Changes the metadata, consisting of the name and dark or light mode, of the terminal theme specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions):
  - Management API - Terminal themes read and write

  ## Request Body

  **Content Types**: `application/json`

  The updated theme metadata.
  """
  @spec patch_merchants_merchant_id_terminal_themes_id(
          merchantId :: String.t(),
          id :: String.t(),
          body :: AdyenEx.Management.V3.ThemeUpdateRequest.t(),
          opts :: keyword
        ) :: {:ok, AdyenEx.Management.V3.UpdateThemeResponse.t()} | {:error, any}
  def patch_merchants_merchant_id_terminal_themes_id(merchantId, id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, id: id, body: body],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :patch_merchants_merchant_id_terminal_themes_id},
      url: "/merchants/#{merchantId}/terminalThemes/#{id}",
      body: body,
      method: :patch,
      request: [{"application/json", {AdyenEx.Management.V3.ThemeUpdateRequest, :t}}],
      response: [
        {200, {AdyenEx.Management.V3.UpdateThemeResponse, :t}},
        {400, :unknown},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {422, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end

  @doc """
  Create a terminal theme

  Creates a terminal theme for the merchant account specified in the path, to customize screens shown on Android payment terminals. This request only creates a basic theme with a name and a dark or light mode. We refer to this as the metadata of the theme. 

  Next steps are to add terminal model-specific assets (images or videos) to the theme, and to apply (activate) the theme. 

  The theme name must be unique for the merchant account; other accounts can have a theme with the same name. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions):
  - Management API - Terminal themes read and write

  ## Request Body

  **Content Types**: `application/json`

  The theme to create.
  """
  @spec post_merchants_merchant_id_terminal_themes(
          merchantId :: String.t(),
          body :: AdyenEx.Management.V3.CreateThemeRequest.t(),
          opts :: keyword
        ) :: {:ok, AdyenEx.Management.V3.CreateThemeResponse.t()} | {:error, any}
  def post_merchants_merchant_id_terminal_themes(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :post_merchants_merchant_id_terminal_themes},
      url: "/merchants/#{merchantId}/terminalThemes",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Management.V3.CreateThemeRequest, :t}}],
      response: [
        {201, {AdyenEx.Management.V3.CreateThemeResponse, :t}},
        {400, :unknown},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {422, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end

  @doc """
  Apply a terminal theme

  Applies the terminal theme specified by its ID to all Android terminals under this merchant account, unless a different theme is applied at a lower level (store or individual terminal).

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions):
  - Management API - Terminal themes read and write
  """
  @spec post_merchants_merchant_id_terminal_themes_id_apply(
          merchantId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, any}
  def post_merchants_merchant_id_terminal_themes_id_apply(merchantId, id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, id: id],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :post_merchants_merchant_id_terminal_themes_id_apply},
      url: "/merchants/#{merchantId}/terminalThemes/#{id}/apply",
      method: :post,
      response: [{200, :null}, {401, :unknown}, {403, :unknown}, {404, :unknown}, {500, :unknown}],
      opts: opts
    })
  end

  @doc """
  Add an asset to a terminal theme

  Adds an image or video (an 'asset') to a terminal theme owned by the merchant account specified in the path. This endpoint is [rate limited](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).

  An asset is used for a specific screen type or screen element, and a specific Android terminal model. You must specify this using the query parameters `type` and `model`. The asset binary itself is uploaded as multipart/form-data with a single file part called `file`, which must declare one of the following supported Content-Type values:

  - **image/svg+xml**: only for the combination `type` **logo** with `model` **All**.
  - **video/mp4** or **video/quicktime**: only for `model` **SFO1** or **M450**.
  - **image/jpeg** (or **image/jpg**): for all `model` values except **All**.
  - **image/png**: for all `model` values except **All**.
  - **image/gif**: for all `model` values except **SFO1** and **M450**.

  The maximum size of the asset depends on the terminal model: 100 MB for `model` **SFO1** and **M450**, or 10 MB for all other `model` values.

  If the theme already has an asset for the same combination of `type` and `model`, the request fails and you need to upload the new asset using the `/merchants/{merchantId}/terminalThemes/{id}/assets/replace` endpoint.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions): 
  - Management API - Terminal themes read and write

  ## Options

    * `type`: The screen type or screen element that the asset is for:
      
      - **logo**: your logo. Only supported if `model` is **All**.
      - **homeScreen**: the default background screen.
      - **idleScreen**: a screensaver shown when the terminal is inactive. Only supported if `model` is **SFO1** or **M450**.
      - **afterPaymentScreen**: a screen shown after the payment is completed.
      - **shopperEngagementScreen**: a screen shown during a [shopper engagement](https://docs.adyen.com/point-of-sale/shopper-engagement) request. Only supported if `model` is **SFO1** or **M450**.
    * `model`: The Android terminal model that the asset is for. Use **All** only if the `type` is **logo**. For every other screen type specify a single Android terminal model such as **AMS1**.

  ## Request Body

  **Content Types**: `multipart/form-data`

  The asset file.
  """
  @spec post_merchants_merchant_id_terminal_themes_id_assets(
          merchantId :: String.t(),
          id :: String.t(),
          body :: AdyenEx.Management.V3.AssetUploadRequest.t(),
          opts :: keyword
        ) :: {:ok, AdyenEx.Management.V3.ThemeAsset.t()} | {:error, any}
  def post_merchants_merchant_id_terminal_themes_id_assets(merchantId, id, body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:model, :type])

    client.request(%{
      args: [merchantId: merchantId, id: id, body: body],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :post_merchants_merchant_id_terminal_themes_id_assets},
      url: "/merchants/#{merchantId}/terminalThemes/#{id}/assets",
      body: body,
      method: :post,
      query: query,
      request: [{"multipart/form-data", {AdyenEx.Management.V3.AssetUploadRequest, :t}}],
      response: [
        {201, {AdyenEx.Management.V3.ThemeAsset, :t}},
        {400, :unknown},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {422, :unknown},
        {429, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end

  @doc """
  Replace a theme asset

  Replaces an existing image or video (an 'asset') of a terminal theme owned by the merchant account specified in the path. This endpoint is [rate limited](https://docs.adyen.com/point-of-sale/automating-terminal-management#rate-limits-in-the-live-environment).\n\n"
  An asset is used for a specific screen type or screen element, and a specific Android 
  terminal model. You must specify this using the query parameters `type` and `model`. 
  The asset binary itself is uploaded as multipart/form-data with a single file part 
  called `file`, which must declare one of the following supported Content-Type values:

  - **image/svg+xml**: only for the combination `type` **logo** with `model` **All**.
  - **video/mp4** or **video/quicktime**: only for `model` **SFO1** or **M450**.
  - **image/jpeg** (or **image/jpg**): for all `model` values except **All**.
  - **image/png**: for all `model` values except **All**.
  - **image/gif**: for all `model` values except **SFO1** and **M450**.
  The maximum size of the asset depends on the terminal model: 100 MB for `model` **SFO1** 
  and **M450**, or 10 MB for all other `model` values.

  You can upload an asset using this endpoint if the theme already has an asset with the specified combination of `type` and `model`. If that is not the case, the request fails and you need to use the endpoint `/merchants/{merchantId}/terminalThemes/{id}/assets` instead.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions): 
  - Management API - Terminal themes read and write

  ## Options

    * `type`: The screen type or screen element that the asset is for:
      
      - **logo**: your logo. Only supported if `model` is **All**.
      - **homeScreen**: the default background screen.
      - **idleScreen**: a screensaver shown when the terminal is inactive. Only supported if `model` is **SFO1** or **M450**.
      - **afterPaymentScreen**: a screen shown after the payment is completed.
      - **shopperEngagementScreen**: a screen shown during [shopper engagement](https://docs.adyen.com/point-of-sale/shopper-engagement) requests. Only supported if `model` is **SFO1** or **M450**.
    * `model`: The Android terminal model that the asset is for. Use **All** only if the `type` is **logo**. For every other screen type specify a single Android terminal model such as **AMS1**.

  ## Request Body

  **Content Types**: `multipart/form-data`

  The asset file.
  """
  @spec post_merchants_merchant_id_terminal_themes_id_assets_replace(
          merchantId :: String.t(),
          id :: String.t(),
          body :: AdyenEx.Management.V3.AssetUploadRequest.t(),
          opts :: keyword
        ) :: {:ok, AdyenEx.Management.V3.ThemeAsset.t()} | {:error, any}
  def post_merchants_merchant_id_terminal_themes_id_assets_replace(
        merchantId,
        id,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:model, :type])

    client.request(%{
      args: [merchantId: merchantId, id: id, body: body],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :post_merchants_merchant_id_terminal_themes_id_assets_replace},
      url: "/merchants/#{merchantId}/terminalThemes/#{id}/assets/replace",
      body: body,
      method: :post,
      query: query,
      request: [{"multipart/form-data", {AdyenEx.Management.V3.AssetUploadRequest, :t}}],
      response: [
        {200, {AdyenEx.Management.V3.ThemeAsset, :t}},
        {400, :unknown},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {422, :unknown},
        {429, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end

  @doc """
  Unapply a terminal theme

  Resets the theme assignment for the merchant account specified in the path. The Android terminals under this merchant account will switch to the custom theme applied at the company level, or to the default Adyen theme if there is no custom theme applied at the company level. However, if a custom theme is applied at a lower level (store or individual terminal) those terminals continue to use their current theme.

  The theme itself remains unchanged and is not deleted. 

  If no custom theme is currently applied to the merchant account, this request returns a **200 OK** response without error. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions): 
  - Management API - Terminal themes read and write
  """
  @spec post_merchants_merchant_id_terminal_themes_unapply(
          merchantId :: String.t(),
          opts :: keyword
        ) :: {:ok, any} | {:error, any}
  def post_merchants_merchant_id_terminal_themes_unapply(merchantId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {AdyenEx.Management.V3.TerminalThemesMerchantLevel,
         :post_merchants_merchant_id_terminal_themes_unapply},
      url: "/merchants/#{merchantId}/terminalThemes/unapply",
      method: :post,
      response: [
        {200, :unknown},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end
end
