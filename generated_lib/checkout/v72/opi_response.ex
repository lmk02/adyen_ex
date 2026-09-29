defmodule AdyenEx.Checkout.V72.OpiResponse do
  @moduledoc """
  Provides struct and type for a OpiResponse
  """

  @type t :: %__MODULE__{issuerId: String.t() | nil, transToken: String.t() | nil}

  defstruct [:issuerId, :transToken]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [issuerId: :string, transToken: :string]
  end
end
