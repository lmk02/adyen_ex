defmodule AdyenEx.Management.V3.ApiCredentialLinks do
  @moduledoc """
  Provides struct and type for a ApiCredentialLinks
  """

  @type t :: %__MODULE__{
          allowedOrigins: AdyenEx.Management.V3.LinksElement.t() | nil,
          company: AdyenEx.Management.V3.LinksElement.t() | nil,
          generateApiKey: AdyenEx.Management.V3.LinksElement.t() | nil,
          generateClientKey: AdyenEx.Management.V3.LinksElement.t() | nil,
          merchant: AdyenEx.Management.V3.LinksElement.t() | nil,
          self: AdyenEx.Management.V3.LinksElement.t()
        }

  defstruct [:allowedOrigins, :company, :generateApiKey, :generateClientKey, :merchant, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowedOrigins: {AdyenEx.Management.V3.LinksElement, :t},
      company: {AdyenEx.Management.V3.LinksElement, :t},
      generateApiKey: {AdyenEx.Management.V3.LinksElement, :t},
      generateClientKey: {AdyenEx.Management.V3.LinksElement, :t},
      merchant: {AdyenEx.Management.V3.LinksElement, :t},
      self: {AdyenEx.Management.V3.LinksElement, :t}
    ]
  end
end
