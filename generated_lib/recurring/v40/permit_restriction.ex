defmodule AdyenEx.Recurring.V40.PermitRestriction do
  @moduledoc """
  Provides struct and type for a PermitRestriction
  """

  @type t :: %__MODULE__{
          maxAmount: AdyenEx.Recurring.V40.Amount.t() | nil,
          singleTransactionLimit: AdyenEx.Recurring.V40.Amount.t() | nil,
          singleUse: boolean | nil
        }

  defstruct [:maxAmount, :singleTransactionLimit, :singleUse]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      maxAmount: {AdyenEx.Recurring.V40.Amount, :t},
      singleTransactionLimit: {AdyenEx.Recurring.V40.Amount, :t},
      singleUse: :boolean
    ]
  end
end
