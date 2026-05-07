defmodule AdyenEx.Checkout.V64.PaymentLinks do
  @moduledoc """
  Provides API endpoints related to payment links
  """

  @default_client AdyenEx.Client

  @doc """
  Get a payment link

  Retrieves the payment link details using the payment link `id`.
  """
  @spec get_payment_links_link_id(linkId :: String.t(), opts :: keyword) ::
          {:ok, AdyenEx.Checkout.V64.PaymentLinkResponse.t()}
          | {:error, AdyenEx.Checkout.V64.ServiceError.t()}
  def get_payment_links_link_id(linkId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [linkId: linkId],
      call: {AdyenEx.Checkout.V64.PaymentLinks, :get_payment_links_link_id},
      url: "/paymentLinks/#{linkId}",
      method: :get,
      response: [
        {200, {AdyenEx.Checkout.V64.PaymentLinkResponse, :t}},
        {400, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {401, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {403, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {422, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {500, {AdyenEx.Checkout.V64.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update the status of a payment link

  Updates the status of a payment link. Use this endpoint to [force the expiry of a payment link](https://docs.adyen.com/online-payments/pay-by-link#update-payment-link-status).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_payment_links_link_id(
          linkId :: String.t(),
          body :: AdyenEx.Checkout.V64.UpdatePaymentLinkRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Checkout.V64.PaymentLinkResponse.t()}
          | {:error, AdyenEx.Checkout.V64.ServiceError.t()}
  def patch_payment_links_link_id(linkId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [linkId: linkId, body: body],
      call: {AdyenEx.Checkout.V64.PaymentLinks, :patch_payment_links_link_id},
      url: "/paymentLinks/#{linkId}",
      body: body,
      method: :patch,
      request: [{"application/json", {AdyenEx.Checkout.V64.UpdatePaymentLinkRequest, :t}}],
      response: [
        {200, {AdyenEx.Checkout.V64.PaymentLinkResponse, :t}},
        {400, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {401, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {403, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {422, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {500, {AdyenEx.Checkout.V64.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a payment link

  Creates a payment link to a [Pay by Link](https://docs.adyen.com/unified-commerce/pay-by-link/) page where the shopper can pay. The list of payment methods presented to the shopper depends on the `currency` and `country` parameters sent in the request.

  For more information, refer to [Pay by Link documentation](https://docs.adyen.com/online-payments/pay-by-link#create-payment-links-through-api).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_payment_links(body :: AdyenEx.Checkout.V64.PaymentLinkRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Checkout.V64.PaymentLinkResponse.t()}
          | {:error, AdyenEx.Checkout.V64.ServiceError.t()}
  def post_payment_links(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Checkout.V64.PaymentLinks, :post_payment_links},
      url: "/paymentLinks",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Checkout.V64.PaymentLinkRequest, :t}}],
      response: [
        {201, {AdyenEx.Checkout.V64.PaymentLinkResponse, :t}},
        {400, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {401, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {403, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {422, {AdyenEx.Checkout.V64.ServiceError, :t}},
        {500, {AdyenEx.Checkout.V64.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
