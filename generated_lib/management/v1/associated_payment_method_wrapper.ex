defmodule AdyenEx.Management.V1.AssociatedPaymentMethodWrapper do
  @moduledoc """
  Provides struct and type for a AssociatedPaymentMethodWrapper
  """

  @type t :: %__MODULE__{
          AssociatedPaymentMethod: AdyenEx.Management.V1.AssociatedPaymentMethod.t() | nil
        }

  defstruct [:AssociatedPaymentMethod]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [AssociatedPaymentMethod: {AdyenEx.Management.V1.AssociatedPaymentMethod, :t}]
  end
end
