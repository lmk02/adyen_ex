defmodule AdyenEx.Account.V4.UploadDocumentRequest do
  @moduledoc """
  Provides struct and type for a UploadDocumentRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t() | nil,
          bankAccountUUID: String.t() | nil,
          documentContent: String.t(),
          documentDetail: AdyenEx.Account.V4.DocumentDetail.t(),
          shareholderCode: String.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :bankAccountUUID,
    :documentContent,
    :documentDetail,
    :shareholderCode
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      bankAccountUUID: :string,
      documentContent: {:string, "byte"},
      documentDetail: {AdyenEx.Account.V4.DocumentDetail, :t},
      shareholderCode: :string
    ]
  end
end
