defmodule AdyenEx.Management.V3.ScheduleTerminalActionsResponse do
  @moduledoc """
  Provides struct and type for a ScheduleTerminalActionsResponse
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
          items: [AdyenEx.Management.V3.TerminalActionScheduleDetail.t()] | nil,
          scheduledAt: String.t() | nil,
          storeId: String.t() | nil,
          terminalsWithErrors: map | nil,
          totalErrors: integer | nil,
          totalScheduled: integer | nil
        }

  defstruct [
    :actionDetails,
    :items,
    :scheduledAt,
    :storeId,
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
           {AdyenEx.Management.V3.ForceRebootDetails, :t},
           {AdyenEx.Management.V3.InstallAndroidAppDetails, :t},
           {AdyenEx.Management.V3.InstallAndroidCertificateDetails, :t},
           {AdyenEx.Management.V3.ReleaseUpdateDetails, :t},
           {AdyenEx.Management.V3.UninstallAndroidAppDetails, :t},
           {AdyenEx.Management.V3.UninstallAndroidCertificateDetails, :t}
         ]},
      items: [{AdyenEx.Management.V3.TerminalActionScheduleDetail, :t}],
      scheduledAt: :string,
      storeId: :string,
      terminalsWithErrors: :map,
      totalErrors: {:integer, "int32"},
      totalScheduled: {:integer, "int32"}
    ]
  end
end
