defmodule AdyenEx.BalancePlatform.V2.TopUpAmountUpdate do
  @moduledoc """
  Provides struct and type for a TopUpAmountUpdate
  """

  @type t :: %__MODULE__{
          fixed: AdyenEx.BalancePlatform.V2.AmountUpdate.t() | nil,
          target: AdyenEx.BalancePlatform.V2.AmountUpdate.t() | nil
        }

  defstruct [:fixed, :target]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      fixed: {:union, [{AdyenEx.BalancePlatform.V2.AmountUpdate, :t}, :null]},
      target: {:union, [{AdyenEx.BalancePlatform.V2.AmountUpdate, :t}, :null]}
    ]
  end
end
