defmodule AdyenEx.BalancePlatform.V2.BalancePlatformConfigurations do
  @moduledoc """
  Provides struct and type for a BalancePlatformConfigurations
  """

  @type t :: %__MODULE__{
          balancePlatformPayoutSchedules: [
            AdyenEx.BalancePlatform.V2.BalancePlatformConfiguration.t()
          ]
        }

  defstruct [:balancePlatformPayoutSchedules]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      balancePlatformPayoutSchedules: [
        {AdyenEx.BalancePlatform.V2.BalancePlatformConfiguration, :t}
      ]
    ]
  end
end
