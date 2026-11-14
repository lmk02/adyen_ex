defmodule AdyenEx.RaiseDisputes.V1.NotAsDescribedInfo do
  @moduledoc """
  Provides struct and type for a NotAsDescribedInfo
  """

  @type t :: %__MODULE__{
          attemptedToReturn: boolean | nil,
          dateAttemptedToReturn: Date.t() | nil,
          dateOfCancellation: Date.t() | nil,
          dateOfFirstNegotiations: Date.t() | nil,
          dateOfReturn: Date.t() | nil,
          dateReturnReceived: Date.t() | nil,
          descriptionOfIssue: String.t(),
          didAttemptToResolve: boolean,
          didCardholderReturn: boolean | nil,
          didMerchantAcceptCancellation: boolean | nil,
          disputeDueTo: String.t(),
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
      attemptedToReturn: :boolean,
      dateAttemptedToReturn: {:string, "date"},
      dateOfCancellation: {:string, "date"},
      dateOfFirstNegotiations: {:string, "date"},
      dateOfReturn: {:string, "date"},
      dateReturnReceived: {:string, "date"},
      descriptionOfIssue: :string,
      didAttemptToResolve: :boolean,
      didCardholderReturn: :boolean,
      didMerchantAcceptCancellation: :boolean,
      disputeDueTo: {:enum, ["notAsDescribed", "defectiveMerchandise"]},
      evidenceOfNegotiationsWithMerchant: :boolean,
      goodsOrServices: {:enum, ["goods", "services"]},
      isNonFiatOrNft: :boolean,
      lastExpectedDate: {:string, "date"},
      reasonMerchantRefused: {:enum, ["MRRA", "MRRM", "MICNRM", "MNLER", "MNPCIR"]},
      resolutionProhibitedByLaw: :boolean,
      returnMethod: {:enum, ["faceToFace", "fedEx", "dhl", "ups", "postalService", "other"]},
      shippingTrackingNumber: :string,
      whoCancelled: {:enum, ["merchant", "cardholder"]}
    ]
  end
end
