defmodule AdyenEx.Transfer.V1.BankAccountInfo do
  @moduledoc """
  Provides struct and type for a BankAccountInfo
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Transfer.V1.Address.t() | nil,
          iban: String.t() | nil,
          ownerName: AdyenEx.Transfer.V1.Name.t() | nil
        }

  defstruct [:address, :iban, :ownerName]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {AdyenEx.Transfer.V1.Address, :t},
      iban: :string,
      ownerName: {AdyenEx.Transfer.V1.Name, :t}
    ]
  end
end
