defmodule AdyenEx.Management.V1.ApiCredentialLinks do
  @moduledoc """
  Provides struct and type for a ApiCredentialLinks
  """

  @type t :: %__MODULE__{
          allowedOrigins: AdyenEx.Management.V1.LinksElement.t() | nil,
          company: AdyenEx.Management.V1.LinksElement.t() | nil,
          generateApiKey: AdyenEx.Management.V1.LinksElement.t() | nil,
          generateClientKey: AdyenEx.Management.V1.LinksElement.t() | nil,
          merchant: AdyenEx.Management.V1.LinksElement.t() | nil,
          self: AdyenEx.Management.V1.LinksElement.t()
        }

  defstruct [:allowedOrigins, :company, :generateApiKey, :generateClientKey, :merchant, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowedOrigins: {AdyenEx.Management.V1.LinksElement, :t},
      company: {AdyenEx.Management.V1.LinksElement, :t},
      generateApiKey: {AdyenEx.Management.V1.LinksElement, :t},
      generateClientKey: {AdyenEx.Management.V1.LinksElement, :t},
      merchant: {AdyenEx.Management.V1.LinksElement, :t},
      self: {AdyenEx.Management.V1.LinksElement, :t}
    ]
  end
end
