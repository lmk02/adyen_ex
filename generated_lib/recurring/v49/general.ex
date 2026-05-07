defmodule AdyenEx.Recurring.V49.General do
  @moduledoc """
  Provides API endpoints related to general
  """

  @default_client AdyenEx.Client

  @doc """
  Create new permits linked to a recurring contract.

  Create permits for a recurring contract, including support for defining restrictions.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_create_permit(body :: AdyenEx.Recurring.V49.CreatePermitRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Recurring.V49.CreatePermitResult.t()}
          | {:error, AdyenEx.Recurring.V49.ServiceError.t()}
  def post_create_permit(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Recurring.V49.General, :post_create_permit},
      url: "/createPermit",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Recurring.V49.CreatePermitRequest, :t}}],
      response: [
        {200, {AdyenEx.Recurring.V49.CreatePermitResult, :t}},
        {400, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {401, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {403, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {422, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {500, {AdyenEx.Recurring.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Disable stored payment details

  Disables stored payment details to stop charging a shopper with this particular recurring detail ID.

  For more information, refer to [Disable stored details](https://docs.adyen.com/online-payments/classic-integrations/classic-api-integration/tokenization/disable-stored-details).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_disable(body :: AdyenEx.Recurring.V49.DisableRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Recurring.V49.DisableResult.t()}
          | {:error, AdyenEx.Recurring.V49.ServiceError.t()}
  def post_disable(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Recurring.V49.General, :post_disable},
      url: "/disable",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Recurring.V49.DisableRequest, :t}}],
      response: [
        {200, {AdyenEx.Recurring.V49.DisableResult, :t}},
        {400, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {401, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {403, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {422, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {500, {AdyenEx.Recurring.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get stored payment details

  Lists the stored payment details for a shopper, if there are any available. The recurring detail ID can be used with a regular authorisation request to charge the shopper. A summary of the payment detail is returned for presentation to the shopper.

  For more information, refer to [Retrieve stored details](https://docs.adyen.com/classic-integration/recurring-payments/retrieve-stored-details/).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_list_recurring_details(
          body :: AdyenEx.Recurring.V49.RecurringDetailsRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Recurring.V49.RecurringDetailsResult.t()}
          | {:error, AdyenEx.Recurring.V49.ServiceError.t()}
  def post_list_recurring_details(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Recurring.V49.General, :post_list_recurring_details},
      url: "/listRecurringDetails",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Recurring.V49.RecurringDetailsRequest, :t}}],
      response: [
        {200, {AdyenEx.Recurring.V49.RecurringDetailsResult, :t}},
        {400, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {401, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {403, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {422, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {500, {AdyenEx.Recurring.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Ask issuer to notify the shopper

  Sends a request to the issuer so they can inform the shopper about the upcoming recurring payment. This endpoint is used only for local acquiring in India. For more information, refer to [Recurring card payments in India](https://docs.adyen.com/payment-methods/cards/cards-recurring-india).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_notify_shopper(
          body :: AdyenEx.Recurring.V49.NotifyShopperRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Recurring.V49.NotifyShopperResult.t()}
          | {:error, AdyenEx.Recurring.V49.ServiceError.t()}
  def post_notify_shopper(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Recurring.V49.General, :post_notify_shopper},
      url: "/notifyShopper",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Recurring.V49.NotifyShopperRequest, :t}}],
      response: [
        {200, {AdyenEx.Recurring.V49.NotifyShopperResult, :t}},
        {400, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {401, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {403, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {422, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {500, {AdyenEx.Recurring.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Schedule running the Account Updater

  When making the API call, you can submit either the credit card information, or the recurring detail reference and the shopper reference:
  * If the card information is provided, all the sub-fields for `card` are mandatory.
  * If the recurring detail reference is provided, the fields for `shopperReference` and `selectedRecurringDetailReference` are mandatory.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_schedule_account_updater(
          body :: AdyenEx.Recurring.V49.ScheduleAccountUpdaterRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Recurring.V49.ScheduleAccountUpdaterResult.t()}
          | {:error, AdyenEx.Recurring.V49.ServiceError.t()}
  def post_schedule_account_updater(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Recurring.V49.General, :post_schedule_account_updater},
      url: "/scheduleAccountUpdater",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Recurring.V49.ScheduleAccountUpdaterRequest, :t}}],
      response: [
        {200, {AdyenEx.Recurring.V49.ScheduleAccountUpdaterResult, :t}},
        {400, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {401, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {403, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {422, {AdyenEx.Recurring.V49.ServiceError, :t}},
        {500, {AdyenEx.Recurring.V49.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
