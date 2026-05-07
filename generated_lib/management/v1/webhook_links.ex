defmodule AdyenEx.Management.V1.WebhookLinks do
  @moduledoc """
  Provides struct and type for a WebhookLinks
  """

  @type t :: %__MODULE__{
          company: AdyenEx.Management.V1.LinksElement.t() | nil,
          generateHmac: AdyenEx.Management.V1.LinksElement.t(),
          merchant: AdyenEx.Management.V1.LinksElement.t() | nil,
          self: AdyenEx.Management.V1.LinksElement.t(),
          testWebhook: AdyenEx.Management.V1.LinksElement.t()
        }

  defstruct [:company, :generateHmac, :merchant, :self, :testWebhook]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      company: {AdyenEx.Management.V1.LinksElement, :t},
      generateHmac: {AdyenEx.Management.V1.LinksElement, :t},
      merchant: {AdyenEx.Management.V1.LinksElement, :t},
      self: {AdyenEx.Management.V1.LinksElement, :t},
      testWebhook: {AdyenEx.Management.V1.LinksElement, :t}
    ]
  end
end
