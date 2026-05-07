defmodule AdyenEx.Management.V3.Nexo do
  @moduledoc """
  Provides struct and type for a Nexo
  """

  @type t :: %__MODULE__{
          displayUrls: AdyenEx.Management.V3.NotificationUrl.t() | nil,
          encryptionKey: AdyenEx.Management.V3.Key.t() | nil,
          eventUrls: AdyenEx.Management.V3.EventUrl.t() | nil,
          nexoEventUrls: [String.t()] | nil,
          notification: AdyenEx.Management.V3.Notification.t() | nil
        }

  defstruct [:displayUrls, :encryptionKey, :eventUrls, :nexoEventUrls, :notification]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      displayUrls: {AdyenEx.Management.V3.NotificationUrl, :t},
      encryptionKey: {AdyenEx.Management.V3.Key, :t},
      eventUrls: {AdyenEx.Management.V3.EventUrl, :t},
      nexoEventUrls: [:string],
      notification: {AdyenEx.Management.V3.Notification, :t}
    ]
  end
end
