import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure ValueFunctionApproximationPackage where
  featureMap : Type u → Type v
  weightVector : Type w
  approximateValue : (featureMap : Type u → Type v) → weightVector → stateType : Type u → ℝ
  lossFunction : (ℝ → ℝ → ℝ)
  learninRate : ℝ

def ValueApproximationClosed (V : ValueFunctionApproximationPackage) : Prop :=
  V.learningRate > 0 ∧ V.learningRate < 1

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse