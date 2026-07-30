import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure TemporalDifferenceLearning where
  bootstrappingTarget : ℝ
  stepSizeParameter : ℝ
  eligibilityTrace : ℝ
  tdError : ℝ

def TDLambdaClosed (TD : TemporalDifferenceLearning) : Prop :=
  TD.stepSizeParameter > 0 ∧ TD.stepSizeParameter < 1

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse