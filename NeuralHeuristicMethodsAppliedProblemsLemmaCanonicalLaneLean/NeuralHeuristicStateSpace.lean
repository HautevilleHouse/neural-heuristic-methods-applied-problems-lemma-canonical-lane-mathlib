import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure NeuralHeuristicStateSpace where
  stateType : Type u
  observationType : Type v
  actionType : Type w
  transitionDynamics : stateType → actionType → stateType
  observationModel : stateType → observationType
  rewardSignal : stateType → ℝ
  discountFactor : ℝ

def StateSpaceClosed (S : NeuralHeuristicStateSpace) : Prop :=
  S.discountFactor > 0 ∧ S.discountFactor ≤ 1

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse