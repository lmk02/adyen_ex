defmodule AdyenEx.Account.V4.GetUploadedDocumentsResponse do
  @moduledoc """
  Provides struct and type for a GetUploadedDocumentsResponse
  """

  @type t :: %__MODULE__{
          documentDetails: [AdyenEx.Account.V4.DocumentDetailWrapper.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:documentDetails, :pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      documentDetails: [{AdyenEx.Account.V4.DocumentDetailWrapper, :t}],
      pspReference: :string,
      resultCode: :string,
      submittedAsync: :boolean
    ]
  end
end
