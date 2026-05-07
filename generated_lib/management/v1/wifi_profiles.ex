defmodule AdyenEx.Management.V1.WifiProfiles do
  @moduledoc """
  Provides struct and type for a WifiProfiles
  """

  @type t :: %__MODULE__{
          profiles: [AdyenEx.Management.V1.Profile.t()] | nil,
          settings: AdyenEx.Management.V1.Settings.t() | nil
        }

  defstruct [:profiles, :settings]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      profiles: [{AdyenEx.Management.V1.Profile, :t}],
      settings: {AdyenEx.Management.V1.Settings, :t}
    ]
  end
end
