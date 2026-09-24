defmodule AdyenEx.Management.V3.UpdateSplitConfigurationRuleRequest do
  @moduledoc """
  Provides struct and type for a UpdateSplitConfigurationRuleRequest
  """

  @type t :: %__MODULE__{
          cardUsageType: String.t() | nil,
          currency: String.t(),
          fundingSource: String.t(),
          paymentMethod: String.t(),
          shopperInteraction: String.t()
        }

  defstruct [:cardUsageType, :currency, :fundingSource, :paymentMethod, :shopperInteraction]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardUsageType: {:enum, ["commercial", "consumer", "ANY"]},
      currency: :string,
      fundingSource: :string,
      paymentMethod: :string,
      shopperInteraction: :string
    ]
  end
end
