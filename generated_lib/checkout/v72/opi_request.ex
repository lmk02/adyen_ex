defmodule AdyenEx.Checkout.V72.OpiRequest do
  @moduledoc """
  Provides struct and type for a OpiRequest
  """

  @type t :: %__MODULE__{includeIssuerId: boolean | nil, includeTransToken: boolean | nil}

  defstruct [:includeIssuerId, :includeTransToken]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [includeIssuerId: :boolean, includeTransToken: :boolean]
  end
end
