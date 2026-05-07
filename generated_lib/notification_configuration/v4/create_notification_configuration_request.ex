defmodule AdyenEx.NotificationConfiguration.V4.CreateNotificationConfigurationRequest do
  @moduledoc """
  Provides struct and type for a CreateNotificationConfigurationRequest
  """

  @type t :: %__MODULE__{
          configurationDetails:
            AdyenEx.NotificationConfiguration.V4.NotificationConfigurationDetails.t()
        }

  defstruct [:configurationDetails]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      configurationDetails:
        {AdyenEx.NotificationConfiguration.V4.NotificationConfigurationDetails, :t}
    ]
  end
end
