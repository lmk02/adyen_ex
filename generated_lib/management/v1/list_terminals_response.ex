defmodule AdyenEx.Management.V1.ListTerminalsResponse do
  @moduledoc """
  Provides struct and type for a ListTerminalsResponse
  """

  @type t :: %__MODULE__{
          _links: AdyenEx.Management.V1.PaginationLinks.t() | nil,
          data: [AdyenEx.Management.V1.Terminal.t()] | nil,
          itemsTotal: integer,
          pagesTotal: integer
        }

  defstruct [:_links, :data, :itemsTotal, :pagesTotal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {AdyenEx.Management.V1.PaginationLinks, :t},
      data: [{AdyenEx.Management.V1.Terminal, :t}],
      itemsTotal: {:integer, "int32"},
      pagesTotal: {:integer, "int32"}
    ]
  end
end
