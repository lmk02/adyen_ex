defmodule AdyenEx.Transfer.V1.TransferOld do
  @moduledoc """
  Provides struct and type for a TransferOld
  """

  @type t :: %__MODULE__{
          amount: AdyenEx.Transfer.V1.Amount.t(),
          description: String.t() | nil,
          destination: AdyenEx.Transfer.V1.PartyIdentification.t(),
          id: String.t(),
          reference: String.t() | nil,
          refusalReason: String.t() | nil,
          resultCode: String.t(),
          source: AdyenEx.Transfer.V1.InternalPartyIdentification.t()
        }

  defstruct [
    :amount,
    :description,
    :destination,
    :id,
    :reference,
    :refusalReason,
    :resultCode,
    :source
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      amount: {AdyenEx.Transfer.V1.Amount, :t},
      description: :string,
      destination: {AdyenEx.Transfer.V1.PartyIdentification, :t},
      id: :string,
      reference: :string,
      refusalReason: :string,
      resultCode: :string,
      source: {AdyenEx.Transfer.V1.InternalPartyIdentification, :t}
    ]
  end
end
