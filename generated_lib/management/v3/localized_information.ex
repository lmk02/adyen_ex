defmodule AdyenEx.Management.V3.LocalizedInformation do
  @moduledoc """
  Provides struct and type for a LocalizedInformation
  """

  @type t :: %__MODULE__{
          localShopperStatement: [AdyenEx.Management.V3.LocalShopperStatement.t()],
          localStoreName: [AdyenEx.Management.V3.LocalStoreName.t()] | nil,
          localizedAddress: [AdyenEx.Management.V3.JapaneseLocalizedAddress.t()] | nil
        }

  defstruct [:localShopperStatement, :localStoreName, :localizedAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      localShopperStatement: [{AdyenEx.Management.V3.LocalShopperStatement, :t}],
      localStoreName: [{AdyenEx.Management.V3.LocalStoreName, :t}],
      localizedAddress: [{AdyenEx.Management.V3.JapaneseLocalizedAddress, :t}]
    ]
  end
end
