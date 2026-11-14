defmodule AdyenEx.Management.V1.JapaneseLocalizedAddressFields do
  @moduledoc """
  Provides struct and type for a JapaneseLocalizedAddressFields
  """

  @type t :: %__MODULE__{
          building: String.t() | nil,
          city: String.t(),
          district: String.t() | nil,
          line1: String.t(),
          postalCode: String.t() | nil,
          prefecture: String.t()
        }

  defstruct [:building, :city, :district, :line1, :postalCode, :prefecture]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      building: :string,
      city: :string,
      district: :string,
      line1: :string,
      postalCode: :string,
      prefecture: :string
    ]
  end
end
