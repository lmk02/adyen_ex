defmodule AdyenEx.Account.V4.AccountHolderStatus do
  @moduledoc """
  Provides struct and type for a AccountHolderStatus
  """

  @type t :: %__MODULE__{
          events: [AdyenEx.Account.V4.AccountEventWrapper.t()] | nil,
          payoutState: AdyenEx.Account.V4.AccountPayoutState.t() | nil,
          processingState: AdyenEx.Account.V4.AccountProcessingState.t() | nil,
          status: String.t(),
          statusReason: String.t() | nil
        }

  defstruct [:events, :payoutState, :processingState, :status, :statusReason]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      events: [{AdyenEx.Account.V4.AccountEventWrapper, :t}],
      payoutState: {AdyenEx.Account.V4.AccountPayoutState, :t},
      processingState: {AdyenEx.Account.V4.AccountProcessingState, :t},
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      statusReason: :string
    ]
  end
end
