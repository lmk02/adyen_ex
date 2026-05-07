defmodule AdyenEx.Transfer.V3.Repayment do
  @moduledoc """
  Provides struct and type for a Repayment
  """

  @type t :: %__MODULE__{
          basisPoints: integer,
          term: AdyenEx.Transfer.V3.RepaymentTerm.t() | nil,
          threshold: AdyenEx.Transfer.V3.ThresholdRepayment.t() | nil
        }

  defstruct [:basisPoints, :term, :threshold]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      basisPoints: {:integer, "int32"},
      term: {AdyenEx.Transfer.V3.RepaymentTerm, :t},
      threshold: {AdyenEx.Transfer.V3.ThresholdRepayment, :t}
    ]
  end
end
