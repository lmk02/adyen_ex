defmodule AdyenEx.Management.V1.ScheduleTerminalActionsResponse do
  @moduledoc """
  Provides struct and type for a ScheduleTerminalActionsResponse
  """

  @type t :: %__MODULE__{
          actionDetails:
            AdyenEx.Management.V1.ForceRebootDetails.t()
            | AdyenEx.Management.V1.InstallAndroidAppDetails.t()
            | AdyenEx.Management.V1.InstallAndroidCertificateDetails.t()
            | AdyenEx.Management.V1.ReleaseUpdateDetails.t()
            | AdyenEx.Management.V1.UninstallAndroidAppDetails.t()
            | AdyenEx.Management.V1.UninstallAndroidCertificateDetails.t()
            | nil,
          items: [AdyenEx.Management.V1.TerminalActionScheduleDetail.t()] | nil,
          scheduledAt: String.t() | nil,
          storeId: String.t() | nil,
          terminalIds: [String.t()] | nil,
          terminalsWithErrors: map | nil,
          totalErrors: integer | nil,
          totalScheduled: integer | nil
        }

  defstruct [
    :actionDetails,
    :items,
    :scheduledAt,
    :storeId,
    :terminalIds,
    :terminalsWithErrors,
    :totalErrors,
    :totalScheduled
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      actionDetails:
        {:union,
         [
           {AdyenEx.Management.V1.ForceRebootDetails, :t},
           {AdyenEx.Management.V1.InstallAndroidAppDetails, :t},
           {AdyenEx.Management.V1.InstallAndroidCertificateDetails, :t},
           {AdyenEx.Management.V1.ReleaseUpdateDetails, :t},
           {AdyenEx.Management.V1.UninstallAndroidAppDetails, :t},
           {AdyenEx.Management.V1.UninstallAndroidCertificateDetails, :t}
         ]},
      items: [{AdyenEx.Management.V1.TerminalActionScheduleDetail, :t}],
      scheduledAt: :string,
      storeId: :string,
      terminalIds: [:string],
      terminalsWithErrors: :map,
      totalErrors: {:integer, "int32"},
      totalScheduled: {:integer, "int32"}
    ]
  end
end
