defmodule AdyenEx.BalancePlatform.V1.Link do
  @moduledoc """
  Provides struct and type for a Link
  """

  @type t :: %__MODULE__{
          first: AdyenEx.BalancePlatform.V1.Href.t() | nil,
          last: AdyenEx.BalancePlatform.V1.Href.t() | nil,
          next: AdyenEx.BalancePlatform.V1.Href.t() | nil,
          previous: AdyenEx.BalancePlatform.V1.Href.t() | nil,
          self: AdyenEx.BalancePlatform.V1.Href.t() | nil
        }

  defstruct [:first, :last, :next, :previous, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      first: {AdyenEx.BalancePlatform.V1.Href, :t},
      last: {AdyenEx.BalancePlatform.V1.Href, :t},
      next: {AdyenEx.BalancePlatform.V1.Href, :t},
      previous: {AdyenEx.BalancePlatform.V1.Href, :t},
      self: {AdyenEx.BalancePlatform.V1.Href, :t}
    ]
  end
end
