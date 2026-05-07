defmodule AdyenEx.Account.V6.DeleteLegalArrangementRequest do
  @moduledoc """
  Provides struct and type for a DeleteLegalArrangementRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          legalArrangements: [AdyenEx.Account.V6.LegalArrangementRequest.t()]
        }

  defstruct [:accountHolderCode, :legalArrangements]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      legalArrangements: [{AdyenEx.Account.V6.LegalArrangementRequest, :t}]
    ]
  end
end
