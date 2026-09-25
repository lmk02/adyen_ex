defmodule AdyenEx.Management.V1.ThemeWithAssetDetails do
  @moduledoc """
  Provides struct and type for a ThemeWithAssetDetails
  """

  @type t :: %__MODULE__{
          assets: [AdyenEx.Management.V1.ThemeAsset.t()],
          id: String.t(),
          mode: String.t(),
          name: String.t()
        }

  defstruct [:assets, :id, :mode, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      assets: [{AdyenEx.Management.V1.ThemeAsset, :t}],
      id: :string,
      mode: {:enum, ["dark", "light"]},
      name: :string
    ]
  end
end
