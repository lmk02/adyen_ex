defmodule AdyenEx.RaiseDisputes.V3.CancelledInfoUpdate do
  @moduledoc """
  Provides struct and type for a CancelledInfoUpdate
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
          goodsOrServices: String.t() | nil,
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
      attemptedToReturn: {:union, [:boolean, :null]},
      certificationGuaranteedReservation: {:union, [{:enum, ["GR", "RC", "AR"]}, :null]},
      dateOfAttemptedReturn: {:union, [{:string, "date"}, :null]},
      dateOfCancellation: {:union, [{:string, "date"}, :null]},
      dateOfReturn: {:union, [{:string, "date"}, :null]},
      dateOfService: {:union, [{:string, "date"}, :null]},
      dateReturnReceived: {:union, [{:string, "date"}, :null]},
      descriptionOfIssue: {:union, [:string, :null]},
      didCardholderCancelBeforeShipment: {:union, [:boolean, :null]},
      didCardholderReceiveGoods: {:union, [:boolean, :null]},
      didCardholderReturn: {:union, [:boolean, :null]},
      goodsOrServices: {:enum, ["goods", "services"]},
      lastExpectedDate: {:union, [{:string, "date"}, :null]},
      merchantRefuseAdvise: {:union, [{:enum, ["MRRA", "MRRM", "MICNRM"]}, :null]},
      returnMethod:
        {:union,
         [{:enum, ["faceToFace", "fedEx", "dhl", "ups", "postalService", "other"]}, :null]},
      serviceType: {:union, [{:enum, ["timeshare", "guaranteedReservation", "other"]}, :null]},
      shippingTrackingNumber: {:union, [:string, :null]},
      timeshareDate: {:union, [{:string, "date"}, :null]},
      wasCancellationPolicyProvided: {:union, [:boolean, :null]},
      whoCancelled: {:union, [{:enum, ["merchant", "cardholder"]}, :null]}
    ]
  end
end
