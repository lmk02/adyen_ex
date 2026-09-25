defmodule AdyenEx.Management.V1.AncvResponseInfo do
  @moduledoc """
  Provides struct and type for a AncvResponseInfo
  """

  @type t :: %__MODULE__{shopId: String.t() | nil}

  defstruct [:shopId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [shopId: :string]
  end
end
