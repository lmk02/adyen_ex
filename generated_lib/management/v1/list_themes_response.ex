defmodule AdyenEx.Management.V1.ListThemesResponse do
  @moduledoc """
  Provides struct and type for a ListThemesResponse
  """

  @type t :: %__MODULE__{data: [AdyenEx.Management.V1.ThemeSummary.t()], hasNextPage: boolean}

  defstruct [:data, :hasNextPage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{AdyenEx.Management.V1.ThemeSummary, :t}], hasNextPage: :boolean]
  end
end
