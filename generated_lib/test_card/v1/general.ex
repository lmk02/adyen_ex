defmodule AdyenEx.TestCard.V1.General do
  @moduledoc """
  Provides API endpoint related to general
  """

  @default_client AdyenEx.Client

  @doc """
  Creates one or more test card ranges.

  Creates one or more test card ranges.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_create_test_card_ranges(
          body :: AdyenEx.TestCard.V1.CreateTestCardRangesRequest.t(),
          opts :: keyword
        ) ::
          {:ok, AdyenEx.TestCard.V1.CreateTestCardRangesResult.t()}
          | {:error, AdyenEx.TestCard.V1.ServiceError.t()}
  def post_create_test_card_ranges(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.TestCard.V1.General, :post_create_test_card_ranges},
      url: "/createTestCardRanges",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.TestCard.V1.CreateTestCardRangesRequest, :t}}],
      response: [
        {200, {AdyenEx.TestCard.V1.CreateTestCardRangesResult, :t}},
        {400, {AdyenEx.TestCard.V1.ServiceError, :t}},
        {401, {AdyenEx.TestCard.V1.ServiceError, :t}},
        {403, {AdyenEx.TestCard.V1.ServiceError, :t}},
        {422, {AdyenEx.TestCard.V1.ServiceError, :t}},
        {500, {AdyenEx.TestCard.V1.ServiceError, :t}}
      ],
      opts: opts
    })
  end
end
