defmodule AdyenEx.Management.V3.JapaneseLocalizedAddress do
  @moduledoc """
  Provides struct and type for a JapaneseLocalizedAddress
  """

  @type t :: %__MODULE__{
          fields: AdyenEx.Management.V3.JapaneseLocalizedAddressFields.t(),
          script: String.t()
        }

  defstruct [:fields, :script]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      fields: {AdyenEx.Management.V3.JapaneseLocalizedAddressFields, :t},
      script: {:enum, ["ja-Kana", "ja-Hani"]}
    ]
  end
end
