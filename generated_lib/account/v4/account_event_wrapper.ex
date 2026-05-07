defmodule AdyenEx.Account.V4.AccountEventWrapper do
  @moduledoc """
  Provides struct and type for a AccountEventWrapper
  """

  @type t :: %__MODULE__{AccountEvent: AdyenEx.Account.V4.AccountEvent.t() | nil}

  defstruct [:AccountEvent]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AccountEvent: {AdyenEx.Account.V4.AccountEvent, :t}]
  end
end
