defmodule AdyenEx.Management.V3.ShippingLocation do
  @moduledoc """
  Provides struct and type for a ShippingLocation
  """

  @type t :: %__MODULE__{
          address: AdyenEx.Management.V3.Address.t() | nil,
          contact: AdyenEx.Management.V3.Contact.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil
        }

  defstruct [:address, :contact, :id, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      address: {AdyenEx.Management.V3.Address, :t},
      contact: {AdyenEx.Management.V3.Contact, :t},
      id: :string,
      name: :string
    ]
  end
end
