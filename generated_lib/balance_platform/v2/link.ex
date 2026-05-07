defmodule AdyenEx.BalancePlatform.V2.Link do
  @moduledoc """
  Provides struct and type for a Link
  """

  @type t :: %__MODULE__{
          first: AdyenEx.BalancePlatform.V2.Href.t() | nil,
          last: AdyenEx.BalancePlatform.V2.Href.t() | nil,
          next: AdyenEx.BalancePlatform.V2.Href.t() | nil,
          previous: AdyenEx.BalancePlatform.V2.Href.t() | nil,
          self: AdyenEx.BalancePlatform.V2.Href.t() | nil
        }

  defstruct [:first, :last, :next, :previous, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      first: {AdyenEx.BalancePlatform.V2.Href, :t},
      last: {AdyenEx.BalancePlatform.V2.Href, :t},
      next: {AdyenEx.BalancePlatform.V2.Href, :t},
      previous: {AdyenEx.BalancePlatform.V2.Href, :t},
      self: {AdyenEx.BalancePlatform.V2.Href, :t}
    ]
  end
end
