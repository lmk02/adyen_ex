defmodule AdyenEx.Management.V3.CompanyLinks do
  @moduledoc """
  Provides struct and type for a CompanyLinks
  """

  @type t :: %__MODULE__{
          apiCredentials: AdyenEx.Management.V3.LinksElement.t() | nil,
          self: AdyenEx.Management.V3.LinksElement.t(),
          users: AdyenEx.Management.V3.LinksElement.t() | nil,
          webhooks: AdyenEx.Management.V3.LinksElement.t() | nil
        }

  defstruct [:apiCredentials, :self, :users, :webhooks]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apiCredentials: {AdyenEx.Management.V3.LinksElement, :t},
      self: {AdyenEx.Management.V3.LinksElement, :t},
      users: {AdyenEx.Management.V3.LinksElement, :t},
      webhooks: {AdyenEx.Management.V3.LinksElement, :t}
    ]
  end
end
