defmodule AdyenEx.Management.V3.EbtResponseInfo do
  @moduledoc """
  Provides struct and type for a EbtResponseInfo
  """

  @type t :: %__MODULE__{fnaNumber: String.t() | nil}

  defstruct [:fnaNumber]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [fnaNumber: :string]
  end
end
