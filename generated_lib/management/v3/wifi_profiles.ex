defmodule AdyenEx.Management.V3.WifiProfiles do
  @moduledoc """
  Provides struct and type for a WifiProfiles
  """

  @type t :: %__MODULE__{
          profiles: [AdyenEx.Management.V3.Profile.t()] | nil,
          settings: AdyenEx.Management.V3.Settings.t() | nil
        }

  defstruct [:profiles, :settings]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      profiles: [{AdyenEx.Management.V3.Profile, :t}],
      settings: {AdyenEx.Management.V3.Settings, :t}
    ]
  end
end
