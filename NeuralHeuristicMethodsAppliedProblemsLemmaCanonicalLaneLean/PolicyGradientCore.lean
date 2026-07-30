import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure PolicyGradientCore where
  policyFunction : stateType : Type u → actionType : Type w → ℝ
  scoreFunction : stateType → actionType → ℝ
  baselineEstimate : stateType → ℝ
  gradientEstimate : ℝ
  returnEstimate : ℝ

def PolicyGradientClosed (PG : PolicyGradientCore) : Prop :=
  PG.gradientEstimate ≠ 0 ∧ PG.returnEstimate > 0

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse