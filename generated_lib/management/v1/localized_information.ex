defmodule AdyenEx.Management.V1.LocalizedInformation do
  @moduledoc """
  Provides struct and type for a LocalizedInformation
  """

  @type t :: %__MODULE__{localShopperStatement: [AdyenEx.Management.V1.LocalShopperStatement.t()]}

  defstruct [:localShopperStatement]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [localShopperStatement: [{AdyenEx.Management.V1.LocalShopperStatement, :t}]]
  end
end
