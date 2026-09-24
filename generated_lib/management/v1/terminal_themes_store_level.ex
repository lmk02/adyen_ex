defmodule AdyenEx.Management.V1.TerminalThemesStoreLevel do
  @moduledoc """
  Provides API endpoints related to terminal themes store level
  """

  @default_client AdyenEx.Client

  @doc """
  Apply a terminal theme

  Applies the terminal theme specified by its ID to all Android terminals under this store, unless a different theme is applied to an individual terminal.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions):
  - Management API - Terminal themes read and write
  """
  @spec post_stores_store_id_terminal_themes_id_apply(
          storeId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, any}
  def post_stores_store_id_terminal_themes_id_apply(storeId, id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [storeId: storeId, id: id],
      call:
        {AdyenEx.Management.V1.TerminalThemesStoreLevel,
         :post_stores_store_id_terminal_themes_id_apply},
      url: "/stores/#{storeId}/terminalThemes/#{id}/apply",
      method: :post,
      response: [{200, :null}, {401, :unknown}, {403, :unknown}, {404, :unknown}, {500, :unknown}],
      opts: opts
    })
  end

  @doc """
  Unapply a terminal theme

  Resets the theme assignment for the store specified in the path. The Android terminals under this store will switch to the theme from the next higher level where a custom theme is applied (merchant account or company) or the default Adyen theme. However, if a custom theme is applied to individual terminals, those terminals continue to use their current theme.

  The theme itself remains unchanged and is not deleted. 

  If no custom theme is currently applied to the store, this request returns a **200 OK** response without error. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions):
  - Management API - Terminal themes read and write
  """
  @spec post_stores_store_id_terminal_themes_unapply(storeId :: String.t(), opts :: keyword) ::
          {:ok, any} | {:error, any}
  def post_stores_store_id_terminal_themes_unapply(storeId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [storeId: storeId],
      call:
        {AdyenEx.Management.V1.TerminalThemesStoreLevel,
         :post_stores_store_id_terminal_themes_unapply},
      url: "/stores/#{storeId}/terminalThemes/unapply",
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
