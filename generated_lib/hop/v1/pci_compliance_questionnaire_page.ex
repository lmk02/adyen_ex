defmodule AdyenEx.Hop.V1.PCIComplianceQuestionnairePage do
  @moduledoc """
  Provides API endpoint related to pci compliance questionnaire page
  """

  @default_client AdyenEx.Client

  @doc """
  Get a link to a PCI compliance questionnaire

  Returns a link to a PCI compliance questionnaire that you can send to your account holder.
   > You should only use this endpoint if you have a [partner platform setup](https://docs.adyen.com/classic-platforms/platforms-for-partners).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_get_pci_questionnaire_url(
          body :: AdyenEx.Hop.V1.GetPciUrlRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.Hop.V1.GetPciUrlResponse.t()} | {:error, AdyenEx.Hop.V1.ServiceError.t()}
  def post_get_pci_questionnaire_url(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Hop.V1.PCIComplianceQuestionnairePage, :post_get_pci_questionnaire_url},
      url: "/getPciQuestionnaireUrl",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Hop.V1.GetPciUrlRequest, :t}}],
      response: [
        {200, {AdyenEx.Hop.V1.GetPciUrlResponse, :t}},
        {400, {AdyenEx.Hop.V1.ServiceError, :t}},
        {401, {AdyenEx.Hop.V1.ServiceError, :t}},
        {403, {AdyenEx.Hop.V1.ServiceError, :t}},
        {422, {AdyenEx.Hop.V1.ServiceError, :t}},
        {500, {AdyenEx.Hop.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
