defmodule AdyenEx.RaiseDisputes.V1.CancelledInfo do
  @moduledoc """
  Provides struct and type for a CancelledInfo
  """

  @type t :: %__MODULE__{
          attemptedToReturn: boolean | nil,
          certificationGuaranteedReservation: String.t() | nil,
          dateOfAttemptedReturn: Date.t() | nil,
          dateOfCancellation: Date.t() | nil,
          dateOfReturn: Date.t() | nil,
          dateOfService: Date.t() | nil,
          dateReturnReceived: Date.t() | nil,
          descriptionOfIssue: String.t() | nil,
          didCardholderCancelBeforeShipment: boolean | nil,
          didCardholderReceiveGoods: boolean | nil,
          didCardholderReturn: boolean | nil,
          goodsOrServices: String.t(),
          lastExpectedDate: Date.t() | nil,
          merchantRefuseAdvise: String.t() | nil,
          returnMethod: String.t() | nil,
          serviceType: String.t() | nil,
          shippingTrackingNumber: String.t() | nil,
          timeshareDate: Date.t() | nil,
          wasCancellationPolicyProvided: boolean | nil,
          whoCancelled: String.t() | nil
        }

  defstruct [
    :attemptedToReturn,
    :certificationGuaranteedReservation,
    :dateOfAttemptedReturn,
    :dateOfCancellation,
    :dateOfReturn,
    :dateOfService,
    :dateReturnReceived,
    :descriptionOfIssue,
    :didCardholderCancelBeforeShipment,
    :didCardholderReceiveGoods,
    :didCardholderReturn,
    :goodsOrServices,
    :lastExpectedDate,
    :merchantRefuseAdvise,
    :returnMethod,
    :serviceType,
    :shippingTrackingNumber,
    :timeshareDate,
    :wasCancellationPolicyProvided,
    :whoCancelled
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attemptedToReturn: :boolean,
      certificationGuaranteedReservation: {:enum, ["GR", "RC", "AR"]},
      dateOfAttemptedReturn: {:string, "date"},
      dateOfCancellation: {:string, "date"},
      dateOfReturn: {:string, "date"},
      dateOfService: {:string, "date"},
      dateReturnReceived: {:string, "date"},
      descriptionOfIssue: :string,
      didCardholderCancelBeforeShipment: :boolean,
      didCardholderReceiveGoods: :boolean,
      didCardholderReturn: :boolean,
      goodsOrServices: {:enum, ["goods", "services"]},
      lastExpectedDate: {:string, "date"},
      merchantRefuseAdvise: {:enum, ["MRRA", "MRRM", "MICNRM"]},
      returnMethod: {:enum, ["faceToFace", "fedEx", "dhl", "ups", "postalService", "other"]},
      serviceType: {:enum, ["timeshare", "guaranteedReservation", "other"]},
      shippingTrackingNumber: :string,
      timeshareDate: {:string, "date"},
      wasCancellationPolicyProvided: :boolean,
      whoCancelled: {:enum, ["merchant", "cardholder"]}
    ]
  end
end
