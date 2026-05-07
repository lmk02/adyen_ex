defmodule AdyenEx.Transfer.V4.Links do
  @moduledoc """
  Provides struct and type for a Links
  """

  @type t :: %__MODULE__{
          next: AdyenEx.Transfer.V4.Link.t() | nil,
          prev: AdyenEx.Transfer.V4.Link.t() | nil
        }

  defstruct [:next, :prev]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [next: {AdyenEx.Transfer.V4.Link, :t}, prev: {AdyenEx.Transfer.V4.Link, :t}]
  end
end
