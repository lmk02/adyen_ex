defmodule AdyenEx.Management.V1.CertificateSearchResponse do
  @moduledoc """
  Provides struct and type for a CertificateSearchResponse
  """

  @type t :: %__MODULE__{data: [AdyenEx.Management.V1.ClientCertificateWithChain.t()]}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{AdyenEx.Management.V1.ClientCertificateWithChain, :t}]]
  end
end
