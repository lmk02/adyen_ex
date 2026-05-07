defmodule AdyenEx.Account.V6.CloseAccountHolderResponse do
  @moduledoc """
  Provides struct and type for a CloseAccountHolderResponse
  """

  @type t :: %__MODULE__{
          accountHolderStatus: AdyenEx.Account.V6.AccountHolderStatus.t() | nil,
          invalidFields: [AdyenEx.Account.V6.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:accountHolderStatus, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderStatus: {AdyenEx.Account.V6.AccountHolderStatus, :t},
      invalidFields: [{AdyenEx.Account.V6.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
