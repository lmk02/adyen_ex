defmodule AdyenEx.Management.V3.ClientCertificateWithChain do
  @moduledoc """
  Provides struct and type for a ClientCertificateWithChain
  """

  @type t :: %__MODULE__{
          caChain: [String.t()],
          id: String.t(),
          leaf: String.t(),
          serialNumber: String.t(),
          subjectDN: String.t()
        }

  defstruct [:caChain, :id, :leaf, :serialNumber, :subjectDN]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      caChain: [string: "byte"],
      id: :string,
      leaf: {:string, "byte"},
      serialNumber: :string,
      subjectDN: :string
    ]
  end
end
