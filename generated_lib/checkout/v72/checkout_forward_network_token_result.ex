defmodule AdyenEx.Checkout.V72.CheckoutForwardNetworkTokenResult do
  @moduledoc """
  Provides struct and type for a CheckoutForwardNetworkTokenResult
  """

  @type t :: %__MODULE__{swapped: boolean | nil}

  defstruct [:swapped]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [swapped: :boolean]
  end
end
