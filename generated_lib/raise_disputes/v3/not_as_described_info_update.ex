defmodule AdyenEx.RaiseDisputes.V3.NotAsDescribedInfoUpdate do
  @moduledoc """
  Provides struct and type for a NotAsDescribedInfoUpdate
  """

  @type t :: %__MODULE__{
          attemptedToReturn: boolean | nil,
          dateAttemptedToReturn: Date.t() | nil,
          dateOfCancellation: Date.t() | nil,
          dateOfFirstNegotiations: Date.t() | nil,
          dateOfReturn: Date.t() | nil,
          dateReturnReceived: Date.t() | nil,
          descriptionOfIssue: String.t() | nil,
          didAttemptToResolve: boolean | nil,
          didCardholderReturn: boolean | nil,
          didMerchantAcceptCancellation: boolean | nil,
          disputeDueTo: String.t() | nil,
          evidenceOfNegotiationsWithMerchant: boolean | nil,
          goodsOrServices: String.t() | nil,
          isNonFiatOrNft: boolean | nil,
          lastExpectedDate: Date.t() | nil,
          reasonMerchantRefused: String.t() | nil,
          resolutionProhibitedByLaw: boolean | nil,
          returnMethod: String.t() | nil,
          shippingTrackingNumber: String.t() | nil,
          whoCancelled: String.t() | nil
        }

  defstruct [
    :attemptedToReturn,
    :dateAttemptedToReturn,
    :dateOfCancellation,
    :dateOfFirstNegotiations,
    :dateOfReturn,
    :dateReturnReceived,
    :descriptionOfIssue,
    :didAttemptToResolve,
    :didCardholderReturn,
    :didMerchantAcceptCancellation,
    :disputeDueTo,
    :evidenceOfNegotiationsWithMerchant,
    :goodsOrServices,
    :isNonFiatOrNft,
    :lastExpectedDate,
    :reasonMerchantRefused,
    :resolutionProhibitedByLaw,
    :returnMethod,
    :shippingTrackingNumber,
    :whoCancelled
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attemptedToReturn: {:union, [:boolean, :null]},
      dateAttemptedToReturn: {:union, [{:string, "date"}, :null]},
      dateOfCancellation: {:union, [{:string, "date"}, :null]},
      dateOfFirstNegotiations: {:union, [{:string, "date"}, :null]},
      dateOfReturn: {:union, [{:string, "date"}, :null]},
      dateReturnReceived: {:union, [{:string, "date"}, :null]},
      descriptionOfIssue: :string,
      didAttemptToResolve: :boolean,
      didCardholderReturn: {:union, [:boolean, :null]},
      didMerchantAcceptCancellation: {:union, [:boolean, :null]},
      disputeDueTo: {:enum, ["notAsDescribed", "defectiveMerchandise"]},
      evidenceOfNegotiationsWithMerchant: {:union, [:boolean, :null]},
      goodsOrServices: {:union, [{:enum, ["goods", "services"]}, :null]},
      isNonFiatOrNft: {:union, [:boolean, :null]},
      lastExpectedDate: {:union, [{:string, "date"}, :null]},
      reasonMerchantRefused:
        {:union, [{:enum, ["MRRA", "MRRM", "MICNRM", "MNLER", "MNPCIR"]}, :null]},
      resolutionProhibitedByLaw: {:union, [:boolean, :null]},
      returnMethod:
        {:union,
         [{:enum, ["faceToFace", "fedEx", "dhl", "ups", "postalService", "other"]}, :null]},
      shippingTrackingNumber: {:union, [:string, :null]},
      whoCancelled: {:union, [{:enum, ["merchant", "cardholder"]}, :null]}
    ]
  end
end
