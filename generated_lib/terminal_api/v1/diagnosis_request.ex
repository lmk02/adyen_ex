defmodule AdyenEx.TerminalAPI.V1.DiagnosisRequest do
  @moduledoc """
  Provides struct and type for a DiagnosisRequest
  """

  @type t :: %__MODULE__{
          AcquirerID: [String.t()] | nil,
          HostDiagnosisFlag: boolean | nil,
          POIID: String.t() | nil
        }

  defstruct [:AcquirerID, :HostDiagnosisFlag, :POIID]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AcquirerID: [:string], HostDiagnosisFlag: :boolean, POIID: :string]
  end
end
