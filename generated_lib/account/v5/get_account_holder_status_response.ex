defmodule AdyenEx.Account.V5.GetAccountHolderStatusResponse do
  @moduledoc """
  Provides struct and type for a GetAccountHolderStatusResponse
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          accountHolderStatus: AdyenEx.Account.V5.AccountHolderStatus.t() | nil,
          invalidFields: [AdyenEx.Account.V5.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:accountHolderCode, :accountHolderStatus, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      accountHolderStatus: {AdyenEx.Account.V5.AccountHolderStatus, :t},
      invalidFields: [{AdyenEx.Account.V5.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
