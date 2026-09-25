defmodule AdyenEx.Management.V3.TerminalThemesTerminalLevel do
  @moduledoc """
  Provides API endpoints related to terminal themes terminal level
  """

  @default_client AdyenEx.Client

  @doc """
  Apply a terminal theme

  Applies the terminal theme specified by its ID to the specified Android terminal. The terminal must be [deployed or boarded](https://docs.adyen.com/api-explorer/Management/3/get/terminals#responses-200-data-assignment-status).

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions):
  - Management API - Terminal themes read and write
  """
  @spec post_terminals_terminal_id_terminal_themes_id_apply(
          terminalId :: String.t(),
          id :: String.t(),
          opts :: keyword
        ) :: :ok | {:error, any}
  def post_terminals_terminal_id_terminal_themes_id_apply(terminalId, id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [terminalId: terminalId, id: id],
      call:
        {AdyenEx.Management.V3.TerminalThemesTerminalLevel,
         :post_terminals_terminal_id_terminal_themes_id_apply},
      url: "/terminals/#{terminalId}/terminalThemes/#{id}/apply",
      method: :post,
      response: [
        {200, :null},
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
  Unapply a terminal theme

  Resets the theme assignment for the Android terminal specified in the path. The terminal will switch to the theme from the next higher level where a custom theme is applied (store, merchant account, or company) or the default Adyen theme. The terminal must be [deployed or boarded](https://docs.adyen.com/api-explorer/Management/3/get/terminals#responses-200-data-assignment-status).

  The theme itself remains unchanged and is not deleted. 

  If no custom theme is currently applied to the terminal, this request returns a **200 OK** response without error. 

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#manage-api-permissions):
  - Management API - Terminal themes read and write
  """
  @spec post_terminals_terminal_id_terminal_themes_unapply(
          terminalId :: String.t(),
          opts :: keyword
        ) :: {:ok, any} | {:error, any}
  def post_terminals_terminal_id_terminal_themes_unapply(terminalId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [terminalId: terminalId],
      call:
        {AdyenEx.Management.V3.TerminalThemesTerminalLevel,
         :post_terminals_terminal_id_terminal_themes_unapply},
      url: "/terminals/#{terminalId}/terminalThemes/unapply",
      method: :post,
      response: [
        {200, :unknown},
        {401, :unknown},
        {403, :unknown},
        {404, :unknown},
        {422, :unknown},
        {500, :unknown}
      ],
      opts: opts
    })
  end
end
