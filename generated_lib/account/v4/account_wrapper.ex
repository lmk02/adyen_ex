defmodule AdyenEx.Account.V4.AccountWrapper do
  @moduledoc """
  Provides struct and type for a AccountWrapper
  """

  @type t :: %__MODULE__{Account: AdyenEx.Account.V4.Account.t() | nil}

  defstruct [:Account]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Account: {AdyenEx.Account.V4.Account, :t}]
  end
end
