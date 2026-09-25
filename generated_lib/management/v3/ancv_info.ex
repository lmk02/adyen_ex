defmodule AdyenEx.Management.V3.AncvInfo do
  @moduledoc """
  Provides struct and type for a AncvInfo
  """

  @type t :: %__MODULE__{shopId: String.t()}

  defstruct [:shopId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [shopId: :string]
  end
end
