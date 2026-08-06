defmodule AdyenEx.BalancePlatform.V2.RecurringTopUpsResult do
  @moduledoc """
  Provides struct and type for a RecurringTopUpsResult
  """

  @type t :: %__MODULE__{
          link: AdyenEx.BalancePlatform.V2.Link.t(),
          recurringTopUps: [AdyenEx.BalancePlatform.V2.RecurringTopUp.t()]
        }

  defstruct [:link, :recurringTopUps]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      link: {AdyenEx.BalancePlatform.V2.Link, :t},
      recurringTopUps: [{AdyenEx.BalancePlatform.V2.RecurringTopUp, :t}]
    ]
  end
end
