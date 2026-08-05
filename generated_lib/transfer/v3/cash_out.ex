defmodule AdyenEx.Transfer.V3.CashOut do
  @moduledoc """
  Provides API endpoint related to cash out
  """

  @default_client AdyenEx.Client

  @doc """
  Initiate a cashout

  Initiates a [cashout](https://docs.adyen.com/platforms/cash-out-instantly) request.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_cashouts(body :: AdyenEx.Transfer.V3.CashOutInfo.t(), opts :: keyword) ::
          {:ok, AdyenEx.Transfer.V3.CashOut.t()}
          | {:error, AdyenEx.Transfer.V3.DefaultErrorResponseEntity.t()}
  def post_cashouts(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {AdyenEx.Transfer.V3.CashOut, :post_cashouts},
      url: "/cashouts",
      body: body,
      method: :post,
      request: [{"application/json", {AdyenEx.Transfer.V3.CashOutInfo, :t}}],
      response: [
        {200, {AdyenEx.Transfer.V3.CashOut, :t}},
        {400, {AdyenEx.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {401, {AdyenEx.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {403, {AdyenEx.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {404, {AdyenEx.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {422, {AdyenEx.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {429, {AdyenEx.Transfer.V3.DefaultErrorResponseEntity, :t}},
        {500, {AdyenEx.Transfer.V3.DefaultErrorResponseEntity, :t}}
      ],
      opts: opts
    })
  end

  @type t :: %__MODULE__{
          amount: AdyenEx.Transfer.V3.Amount.t(),
          counterparty: AdyenEx.Transfer.V3.CashOutInfoCounterparty.t() | nil,
          description: String.t() | nil,
          fee: AdyenEx.Transfer.V3.Fee.t() | nil,
          id: String.t(),
          instructingBalanceAccountId: String.t(),
          referenceForBeneficiary: String.t() | nil,
          transferInstrumentId: String.t() | nil,
          transfers: [AdyenEx.Transfer.V3.CashOutTransfer.t()]
        }

  defstruct [
    :amount,
    :counterparty,
    :description,
    :fee,
    :id,
    :instructingBalanceAccountId,
    :referenceForBeneficiary,
    :transferInstrumentId,
    :transfers
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Transfer.V3.Amount, :t},
      counterparty: {AdyenEx.Transfer.V3.CashOutInfoCounterparty, :t},
      description: :string,
      fee: {AdyenEx.Transfer.V3.Fee, :t},
      id: :string,
      instructingBalanceAccountId: :string,
      referenceForBeneficiary: :string,
      transferInstrumentId: :string,
      transfers: [{AdyenEx.Transfer.V3.CashOutTransfer, :t}]
    ]
  end
end
