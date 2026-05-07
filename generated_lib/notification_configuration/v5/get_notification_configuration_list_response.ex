defmodule AdyenEx.NotificationConfiguration.V5.GetNotificationConfigurationListResponse do
  @moduledoc """
  Provides struct and type for a GetNotificationConfigurationListResponse
  """

  @type t :: %__MODULE__{
          configurations:
            [AdyenEx.NotificationConfiguration.V5.NotificationConfigurationDetails.t()] | nil,
          invalidFields: [AdyenEx.NotificationConfiguration.V5.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:configurations, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configurations: [
        {AdyenEx.NotificationConfiguration.V5.NotificationConfigurationDetails, :t}
      ],
      invalidFields: [{AdyenEx.NotificationConfiguration.V5.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
