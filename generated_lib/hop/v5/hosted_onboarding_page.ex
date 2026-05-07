defmodule AdyenEx.Hop.V5.HostedOnboardingPage do
  @moduledoc """
  Provides API endpoint related to hosted onboarding page
  """

  @default_client AdyenEx.Client

  @doc """
  Get a link to a Adyen-hosted onboarding page

  Returns a link to an Adyen-hosted onboarding page (HOP) that you can send to your account holder. For more information on how to use HOP, refer to [Hosted onboarding](https://docs.adyen.com/classic-platforms/onboard-users/hosted-onboarding-page).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_onboarding_url(
          body :: AdyenEx.Hop.V5.GetOnboardingUrlRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Hop.V5.GetOnboardingUrlResponse.t()}
          | {:error, AdyenEx.Hop.V5.ServiceError.t()}
  def post_get_onboarding_url(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Hop.V5.HostedOnboardingPage, :post_get_onboarding_url},
      url: "/getOnboardingUrl",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Hop.V5.GetOnboardingUrlRequest, :t}}],
      response: [
        {200, {AdyenEx.Hop.V5.GetOnboardingUrlResponse, :t}},
        {400, {AdyenEx.Hop.V5.ServiceError, :t}},
        {401, {AdyenEx.Hop.V5.ServiceError, :t}},
        {403, {AdyenEx.Hop.V5.ServiceError, :t}},
        {422, {AdyenEx.Hop.V5.ServiceError, :t}},
        {500, {AdyenEx.Hop.V5.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
