defmodule AdyenEx.Management.V1.PixResponseInfo do
  @moduledoc """
  Provides struct and type for a PixResponseInfo
  """

  @type t :: %__MODULE__{allowPayByBank: boolean | nil, allowRecurring: boolean | nil}

  defstruct [:allowPayByBank, :allowRecurring]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [allowPayByBank: :boolean, allowRecurring: :boolean]
  end
end
