defmodule AdyenEx.Management.V1.LocalizedInformation do
  @moduledoc """
  Provides struct and type for a LocalizedInformation
  """

  @type t :: %__MODULE__{
          localShopperStatement: [AdyenEx.Management.V1.LocalShopperStatement.t()],
          localStoreName: [AdyenEx.Management.V1.LocalStoreName.t()] | nil,
          localizedAddress: [AdyenEx.Management.V1.JapaneseLocalizedAddress.t()] | nil
        }

  defstruct [:localShopperStatement, :localStoreName, :localizedAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      localShopperStatement: [{AdyenEx.Management.V1.LocalShopperStatement, :t}],
      localStoreName: [{AdyenEx.Management.V1.LocalStoreName, :t}],
      localizedAddress: [{AdyenEx.Management.V1.JapaneseLocalizedAddress, :t}]
    ]
  end
end
