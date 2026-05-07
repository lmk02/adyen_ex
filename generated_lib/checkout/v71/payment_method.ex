defmodule AdyenEx.Checkout.V71.PaymentMethod do
  @moduledoc """
  Provides struct and type for a PaymentMethod
  """

  @type t :: %__MODULE__{
          apps: [AdyenEx.Checkout.V71.PaymentMethodUPIApps.t()] | nil,
          brand: String.t() | nil,
          brands: [String.t()] | nil,
          configuration: map | nil,
          fundingSource: String.t() | nil,
          group: AdyenEx.Checkout.V71.PaymentMethodGroup.t() | nil,
          inputDetails: [AdyenEx.Checkout.V71.InputDetail.t()] | nil,
          issuers: [AdyenEx.Checkout.V71.PaymentMethodIssuer.t()] | nil,
          name: String.t() | nil,
          promoted: boolean | nil,
          type: String.t() | nil
        }

  defstruct [
    :apps,
    :brand,
    :brands,
    :configuration,
    :fundingSource,
    :group,
    :inputDetails,
    :issuers,
    :name,
    :promoted,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apps: [{AdyenEx.Checkout.V71.PaymentMethodUPIApps, :t}],
      brand: :string,
      brands: [:string],
      configuration: :map,
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      group: {AdyenEx.Checkout.V71.PaymentMethodGroup, :t},
      inputDetails: [{AdyenEx.Checkout.V71.InputDetail, :t}],
      issuers: [{AdyenEx.Checkout.V71.PaymentMethodIssuer, :t}],
      name: :string,
      promoted: :boolean,
      type: :string
    ]
  end
end
