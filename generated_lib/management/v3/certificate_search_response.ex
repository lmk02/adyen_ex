defmodule AdyenEx.Management.V3.CertificateSearchResponse do
  @moduledoc """
  Provides struct and type for a CertificateSearchResponse
  """

  @type t :: %__MODULE__{data: [AdyenEx.Management.V3.ClientCertificateWithChain.t()]}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{AdyenEx.Management.V3.ClientCertificateWithChain, :t}]]
  end
end
