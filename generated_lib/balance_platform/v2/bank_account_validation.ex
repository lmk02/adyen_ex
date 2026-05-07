defmodule AdyenEx.BalancePlatform.V2.BankAccountValidation do
  @moduledoc """
  Provides API endpoint related to bank account validation
  """

  @default_client AdyenEx.Client

  @doc """
  Validate a bank account

  Validates bank account identification details. You can use this endpoint to validate bank account details before you [make a transfer](https://docs.adyen.com/api-explorer/transfers/latest/post/transfers) or [create a transfer instrument](https://docs.adyen.com/api-explorer/legalentity/latest/post/transferInstruments).

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_validate_bank_account_identification(
          body :: AdyenEx.BalancePlatform.V2.BankAccountIdentificationValidationRequest.t(),
          opts :: keyword
        ) :: :ok | {:error, AdyenEx.BalancePlatform.V2.RestServiceError.t()}
  def post_validate_bank_account_identification(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call:
        {AdyenEx.BalancePlatform.V2.BankAccountValidation,
         :post_validate_bank_account_identification},
      url: "/validateBankAccountIdentification",
      body: body,
      method: :post,
      request: [
        {"application/json",
         {AdyenEx.BalancePlatform.V2.BankAccountIdentificationValidationRequest, :t}}
      ],
      response: [
        {200, :null},
        {401, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {403, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {422, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}},
        {500, {AdyenEx.BalancePlatform.V2.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
