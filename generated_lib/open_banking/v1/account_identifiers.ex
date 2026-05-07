defmodule AdyenEx.OpenBanking.V1.AccountIdentifiers do
  @moduledoc """
  Provides struct and type for a AccountIdentifiers
  """

  @type t :: %__MODULE__{
          ach: AdyenEx.OpenBanking.V1.ACHAccountIdentifier.t() | nil,
          bacs: AdyenEx.OpenBanking.V1.BACSAccountIdentifier.t() | nil,
          bsb: AdyenEx.OpenBanking.V1.BSBAccountIdentifier.t() | nil,
          eft: AdyenEx.OpenBanking.V1.EFTAccountIdentifier.t() | nil,
          iban: AdyenEx.OpenBanking.V1.IBANAccountIdentifier.t() | nil,
          rix: AdyenEx.OpenBanking.V1.RIXAccountIdentifier.t() | nil
        }

  defstruct [:ach, :bacs, :bsb, :eft, :iban, :rix]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ach: {AdyenEx.OpenBanking.V1.ACHAccountIdentifier, :t},
      bacs: {AdyenEx.OpenBanking.V1.BACSAccountIdentifier, :t},
      bsb: {AdyenEx.OpenBanking.V1.BSBAccountIdentifier, :t},
      eft: {AdyenEx.OpenBanking.V1.EFTAccountIdentifier, :t},
      iban: {AdyenEx.OpenBanking.V1.IBANAccountIdentifier, :t},
      rix: {AdyenEx.OpenBanking.V1.RIXAccountIdentifier, :t}
    ]
  end
end
