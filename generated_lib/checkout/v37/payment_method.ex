defmodule AdyenEx.Checkout.V37.PaymentMethod do
  @moduledoc """
  Provides struct and type for a PaymentMethod
  """

  @type t :: %__MODULE__{
          apps: [AdyenEx.Checkout.V37.PaymentMethodUPIApps.t()] | nil,
          configuration: map | nil,
          details: [AdyenEx.Checkout.V37.InputDetail.t()] | nil,
          group: AdyenEx.Checkout.V37.PaymentMethodGroup.t() | nil,
          inputDetails: [AdyenEx.Checkout.V37.InputDetail.t()] | nil,
          name: String.t() | nil,
          promoted: boolean | nil,
          supportsRecurring: boolean | nil,
          type: String.t() | nil
        }

  defstruct [
    :apps,
    :configuration,
    :details,
    :group,
    :inputDetails,
    :name,
    :promoted,
    :supportsRecurring,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apps: [{AdyenEx.Checkout.V37.PaymentMethodUPIApps, :t}],
      configuration: :map,
      details: [{AdyenEx.Checkout.V37.InputDetail, :t}],
      group: {AdyenEx.Checkout.V37.PaymentMethodGroup, :t},
      inputDetails: [{AdyenEx.Checkout.V37.InputDetail, :t}],
      name: :string,
      promoted: :boolean,
      supportsRecurring: :boolean,
      type: :string
    ]
  end
end
