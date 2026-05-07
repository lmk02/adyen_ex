defmodule AdyenEx.Checkout.V64.RecurringDetail do
  @moduledoc """
  Provides struct and type for a RecurringDetail
  """

  @type t :: %__MODULE__{
          apps: [AdyenEx.Checkout.V64.PaymentMethodUPIApps.t()] | nil,
          brands: [String.t()] | nil,
          configuration: map | nil,
          details: [AdyenEx.Checkout.V64.InputDetail.t()] | nil,
          fundingSource: String.t() | nil,
          group: AdyenEx.Checkout.V64.PaymentMethodGroup.t() | nil,
          inputDetails: [AdyenEx.Checkout.V64.InputDetail.t()] | nil,
          name: String.t() | nil,
          promoted: boolean | nil,
          recurringDetailReference: String.t() | nil,
          storedDetails: AdyenEx.Checkout.V64.StoredDetails.t() | nil,
          supportsRecurring: boolean | nil,
          type: String.t() | nil
        }

  defstruct [
    :apps,
    :brands,
    :configuration,
    :details,
    :fundingSource,
    :group,
    :inputDetails,
    :name,
    :promoted,
    :recurringDetailReference,
    :storedDetails,
    :supportsRecurring,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apps: [{AdyenEx.Checkout.V64.PaymentMethodUPIApps, :t}],
      brands: [:string],
      configuration: :map,
      details: [{AdyenEx.Checkout.V64.InputDetail, :t}],
      fundingSource: {:enum, ["credit", "debit", "prepaid"]},
      group: {AdyenEx.Checkout.V64.PaymentMethodGroup, :t},
      inputDetails: [{AdyenEx.Checkout.V64.InputDetail, :t}],
      name: :string,
      promoted: :boolean,
      recurringDetailReference: :string,
      storedDetails: {AdyenEx.Checkout.V64.StoredDetails, :t},
      supportsRecurring: :boolean,
      type: :string
    ]
  end
end
