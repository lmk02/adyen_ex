defmodule AdyenEx.Checkout.V72.Utility do
  @moduledoc """
  Provides API endpoints related to utility
  """

  @default_client AdyenEx.Client

  @doc """
  Get an Apple Pay session

  You need to use this endpoint if you have an API-only integration with Apple Pay which uses Adyen's Apple Pay certificate.

  The endpoint returns the Apple Pay session data which you need to complete the [Apple Pay session validation](https://docs.adyen.com/payment-methods/apple-pay/api-only?tab=adyen-certificate-validation_1#complete-apple-pay-session-validation).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_apple_pay_sessions(
          body :: AdyenEx.Checkout.V72.ApplePaySessionRequest.t(),
          opts :: keyword
        ) :: {:ok, AdyenEx.Checkout.V72.ApplePaySessionResponse.t()} | :error
  def post_apple_pay_sessions(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Checkout.V72.Utility, :post_apple_pay_sessions},
      url: "/applePay/sessions",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Checkout.V72.ApplePaySessionRequest, :t}}],
      response: [{200, {AdyenEx.Checkout.V72.ApplePaySessionResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Calculate the tax for a transaction.

  Calculates the applicable tax, for example the India Liberalised Remittance Scheme Tax Collected at Source, based on the taxable amount and the tax calculation context. The response returns the canonical calculation and an opaque token that you submit in /payments. Use taxCalculation.totalAmount as the amount in /payments.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_calculate_tax(body :: AdyenEx.Checkout.V72.CalculateTaxRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Checkout.V72.CalculateTaxResponse.t()}
          | {:error, AdyenEx.Checkout.V72.CheckoutErrorResponseEntity.t()}
  def post_calculate_tax(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Checkout.V72.Utility, :post_calculate_tax},
      url: "/calculateTax",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Checkout.V72.CalculateTaxRequest, :t}}],
      response: [
        {200, {AdyenEx.Checkout.V72.CalculateTaxResponse, :t}},
        {400, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {401, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {403, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {422, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {500, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create originKey values for domains

  This operation takes the origin domains and returns a JSON object containing the corresponding origin keys for the domains. 
  > If you're still using origin key for your Web Drop-in or Components integration, we recommend [switching to client key](https://docs.adyen.com/development-resources/client-side-authentication/migrate-from-origin-key-to-client-key). This allows you to use a single key for all origins, add or remove origins without generating a new key, and detect the card type from the number entered in your payment form. 

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_origin_keys(body :: AdyenEx.Checkout.V72.UtilityRequest.t(), opts :: keyword) ::
          {:ok, AdyenEx.Checkout.V72.UtilityResponse.t()}
          | {:error, AdyenEx.Checkout.V72.ServiceError.t()}
  def post_origin_keys(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Checkout.V72.Utility, :post_origin_keys},
      url: "/originKeys",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Checkout.V72.UtilityRequest, :t}}],
      response: [
        {200, {AdyenEx.Checkout.V72.UtilityResponse, :t}},
        {400, {AdyenEx.Checkout.V72.ServiceError, :t}},
        {401, {AdyenEx.Checkout.V72.ServiceError, :t}},
        {403, {AdyenEx.Checkout.V72.ServiceError, :t}},
        {422, {AdyenEx.Checkout.V72.ServiceError, :t}},
        {500, {AdyenEx.Checkout.V72.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Updates the order for PayPal Express Checkout

  Updates the order for PayPal Express Checkout. This can be used to update the PayPal lightbox with an updated amount and delivery methods based on the delivery address.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_paypal_update_order(
          body :: AdyenEx.Checkout.V72.PaypalUpdateOrderRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Checkout.V72.PaypalUpdateOrderResponse.t()}
          | {:error, AdyenEx.Checkout.V72.ServiceError.t()}
  def post_paypal_update_order(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Checkout.V72.Utility, :post_paypal_update_order},
      url: "/paypal/updateOrder",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Checkout.V72.PaypalUpdateOrderRequest, :t}}],
      response: [
        {200, {AdyenEx.Checkout.V72.PaypalUpdateOrderResponse, :t}},
        {400, {AdyenEx.Checkout.V72.ServiceError, :t}},
        {401, {AdyenEx.Checkout.V72.ServiceError, :t}},
        {403, {AdyenEx.Checkout.V72.ServiceError, :t}},
        {422, {AdyenEx.Checkout.V72.ServiceError, :t}},
        {500, {AdyenEx.Checkout.V72.ServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Validates shopper Id

  Validates the shopperId.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_validate_shopper_id(
          body :: AdyenEx.Checkout.V72.ValidateShopperIdRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Checkout.V72.ValidateShopperIdResponse.t()}
          | {:error, AdyenEx.Checkout.V72.CheckoutErrorResponseEntity.t()}
  def post_validate_shopper_id(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Checkout.V72.Utility, :post_validate_shopper_id},
      url: "/validateShopperId",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Checkout.V72.ValidateShopperIdRequest, :t}}],
      response: [
        {200, {AdyenEx.Checkout.V72.ValidateShopperIdResponse, :t}},
        {400, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {401, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {403, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {422, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {500, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Verify the shopper's tax identification.

  In some countries, collecting and verifying tax information is required for regulatory compliance. Submit the shopper's tax identification for verification; when the verification succeeds, the response returns an opaque token that you submit in /payments.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_verify_shopper_tax_identification(
          body :: AdyenEx.Checkout.V72.VerifyShopperTaxIdentificationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Checkout.V72.VerifyShopperTaxIdentificationResponse.t()}
          | {:error, AdyenEx.Checkout.V72.CheckoutErrorResponseEntity.t()}
  def post_verify_shopper_tax_identification(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Checkout.V72.Utility, :post_verify_shopper_tax_identification},
      url: "/verifyShopperTaxIdentification",
      body: body,
      method: :post,
      request: [
        {"application/json", {AdyenEx.Checkout.V72.VerifyShopperTaxIdentificationRequest, :t}}
      ],
      response: [
        {200, {AdyenEx.Checkout.V72.VerifyShopperTaxIdentificationResponse, :t}},
        {400, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {401, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {403, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {422, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}},
        {500, {AdyenEx.Checkout.V72.CheckoutErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end
end
