defmodule AdyenEx.Account.V6.GetUploadedDocumentsResponse do
  @moduledoc """
  Provides struct and type for a GetUploadedDocumentsResponse
  """

  @type t :: %__MODULE__{
          documentDetails: [AdyenEx.Account.V6.DocumentDetail.t()] | nil,
          invalidFields: [AdyenEx.Account.V6.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:documentDetails, :invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documentDetails: [{AdyenEx.Account.V6.DocumentDetail, :t}],
      invalidFields: [{AdyenEx.Account.V6.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
