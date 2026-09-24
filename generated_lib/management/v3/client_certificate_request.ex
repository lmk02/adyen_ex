defmodule AdyenEx.Management.V3.ClientCertificateRequest do
  @moduledoc """
  Provides struct and type for a ClientCertificateRequest
  """

  @type t :: %__MODULE__{apiCredential: String.t(), certificateSigningRequest: String.t()}

  defstruct [:apiCredential, :certificateSigningRequest]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [apiCredential: :string, certificateSigningRequest: :string]
  end
end
