defmodule AdyenEx.Management.V1.NotificationUrl do
  @moduledoc """
  Provides struct and type for a NotificationUrl
  """

  @type t :: %__MODULE__{
          localUrls: [AdyenEx.Management.V1.Url.t()] | nil,
          publicUrls: [AdyenEx.Management.V1.Url.t()] | nil
        }

  defstruct [:localUrls, :publicUrls]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [localUrls: [{AdyenEx.Management.V1.Url, :t}], publicUrls: [{AdyenEx.Management.V1.Url, :t}]]
  end
end
