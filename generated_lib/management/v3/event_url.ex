defmodule AdyenEx.Management.V3.EventUrl do
  @moduledoc """
  Provides struct and type for a EventUrl
  """

  @type t :: %__MODULE__{
          eventLocalUrls: [AdyenEx.Management.V3.Url.t()] | nil,
          eventPublicUrls: [AdyenEx.Management.V3.Url.t()] | nil
        }

  defstruct [:eventLocalUrls, :eventPublicUrls]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      eventLocalUrls: [{AdyenEx.Management.V3.Url, :t}],
      eventPublicUrls: [{AdyenEx.Management.V3.Url, :t}]
    ]
  end
end
