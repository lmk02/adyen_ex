defmodule AdyenEx.Account.V4.PersonalDocumentDataWrapper do
  @moduledoc """
  Provides struct and type for a PersonalDocumentDataWrapper
  """

  @type t :: %__MODULE__{PersonalDocumentData: AdyenEx.Account.V4.PersonalDocumentData.t() | nil}

  defstruct [:PersonalDocumentData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [PersonalDocumentData: {AdyenEx.Account.V4.PersonalDocumentData, :t}]
  end
end
