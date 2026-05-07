defmodule AdyenEx.Transfer.V1.TransferInfoOld do
  @moduledoc """
  Provides struct and type for a TransferInfoOld
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Transfer.V1.Amount.t(),
          description: String.t() | nil,
          destination: AdyenEx.Transfer.V1.PartyIdentification.t(),
          reference: String.t() | nil,
          source: AdyenEx.Transfer.V1.InternalPartyIdentification.t()
        }

  defstruct [:amount, :description, :destination, :reference, :source]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Transfer.V1.Amount, :t},
      description: :string,
      destination: {AdyenEx.Transfer.V1.PartyIdentification, :t},
      reference: :string,
      source: {AdyenEx.Transfer.V1.InternalPartyIdentification, :t}
    ]
  end
end
