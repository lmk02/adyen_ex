defmodule AdyenEx.Management.V1.MerchantLinks do
  @moduledoc """
  Provides struct and type for a MerchantLinks
  """

  @type t :: %__MODULE__{
          apiCredentials: AdyenEx.Management.V1.LinksElement.t() | nil,
          self: AdyenEx.Management.V1.LinksElement.t(),
          users: AdyenEx.Management.V1.LinksElement.t() | nil,
          webhooks: AdyenEx.Management.V1.LinksElement.t() | nil
        }

  defstruct [:apiCredentials, :self, :users, :webhooks]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apiCredentials: {AdyenEx.Management.V1.LinksElement, :t},
      self: {AdyenEx.Management.V1.LinksElement, :t},
      users: {AdyenEx.Management.V1.LinksElement, :t},
      webhooks: {AdyenEx.Management.V1.LinksElement, :t}
    ]
  end
end
