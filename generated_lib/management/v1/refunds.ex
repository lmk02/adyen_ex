defmodule AdyenEx.Management.V1.Refunds do
  @moduledoc """
  Provides struct and type for a Refunds
  """

  @type t :: %__MODULE__{
          referenced: AdyenEx.Management.V1.Referenced.t() | nil,
          unreferenced: AdyenEx.Management.V1.Unreferenced.t() | nil
        }

  defstruct [:referenced, :unreferenced]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      referenced: {AdyenEx.Management.V1.Referenced, :t},
      unreferenced: {AdyenEx.Management.V1.Unreferenced, :t}
    ]
  end
end
