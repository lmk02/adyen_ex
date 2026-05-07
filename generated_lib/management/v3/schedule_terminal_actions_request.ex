defmodule AdyenEx.Management.V3.ScheduleTerminalActionsRequest do
  @moduledoc """
  Provides struct and type for a ScheduleTerminalActionsRequest
  """

  @type t :: %__MODULE__{
          actionDetails:
            AdyenEx.Management.V3.ForceRebootDetails.t()
            | AdyenEx.Management.V3.InstallAndroidAppDetails.t()
            | AdyenEx.Management.V3.InstallAndroidCertificateDetails.t()
            | AdyenEx.Management.V3.ReleaseUpdateDetails.t()
            | AdyenEx.Management.V3.UninstallAndroidAppDetails.t()
            | AdyenEx.Management.V3.UninstallAndroidCertificateDetails.t()
            | nil,
          scheduledAt: String.t() | nil,
          storeId: String.t() | nil,
          terminalIds: [String.t()] | nil
        }

  defstruct [:actionDetails, :scheduledAt, :storeId, :terminalIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      actionDetails:
        {:union,
         [
           {AdyenEx.Management.V3.ForceRebootDetails, :t},
           {AdyenEx.Management.V3.InstallAndroidAppDetails, :t},
           {AdyenEx.Management.V3.InstallAndroidCertificateDetails, :t},
           {AdyenEx.Management.V3.ReleaseUpdateDetails, :t},
           {AdyenEx.Management.V3.UninstallAndroidAppDetails, :t},
           {AdyenEx.Management.V3.UninstallAndroidCertificateDetails, :t}
         ]},
      scheduledAt: :string,
      storeId: :string,
      terminalIds: [:string]
    ]
  end
end
