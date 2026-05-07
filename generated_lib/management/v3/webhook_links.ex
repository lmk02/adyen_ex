defmodule AdyenEx.Management.V3.WebhookLinks do
  @moduledoc """
  Provides struct and type for a WebhookLinks
  """

  @type t :: %__MODULE__{
          company: AdyenEx.Management.V3.LinksElement.t() | nil,
          generateHmac: AdyenEx.Management.V3.LinksElement.t(),
          merchant: AdyenEx.Management.V3.LinksElement.t() | nil,
          self: AdyenEx.Management.V3.LinksElement.t(),
          testWebhook: AdyenEx.Management.V3.LinksElement.t()
        }

  defstruct [:company, :generateHmac, :merchant, :self, :testWebhook]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      company: {AdyenEx.Management.V3.LinksElement, :t},
      generateHmac: {AdyenEx.Management.V3.LinksElement, :t},
      merchant: {AdyenEx.Management.V3.LinksElement, :t},
      self: {AdyenEx.Management.V3.LinksElement, :t},
      testWebhook: {AdyenEx.Management.V3.LinksElement, :t}
    ]
  end
end
