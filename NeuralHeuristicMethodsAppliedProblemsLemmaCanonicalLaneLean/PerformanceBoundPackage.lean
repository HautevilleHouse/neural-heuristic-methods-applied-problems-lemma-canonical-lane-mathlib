import HautevilleHouse.NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean.NeuralHeuristicBase

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure PerformanceBoundPackage (O : NeuralAdmittedObject) where
  worstCaseError : Prop
  averageCaseError : Prop
  approximationRatio : Prop
  runtimeComplexity : Prop

structure PerformanceBoundEvidence (O : NeuralAdmittedObject) (P : PerformanceBoundPackage O) where
  worstCaseErrorClosed : P.worstCaseError
  averageCaseErrorClosed : P.averageCaseError
  approximationRatioClosed : P.approximationRatio
  runtimeComplexityClosed : P.runtimeComplexity

def PerformanceBoundClosed (O : NeuralAdmittedObject) (P : PerformanceBoundPackage O) : Prop :=
  P.worstCaseError ∧ P.averageCaseError ∧ P.approximationRatio ∧ P.runtimeComplexity

theorem performance_bound_closed_from_evidence (O : NeuralAdmittedObject) (P : PerformanceBoundPackage O) (E : PerformanceBoundEvidence O P) :
    PerformanceBoundClosed O P := by
  exact And.intro E.worstCaseErrorClosed (And.intro E.averageCaseErrorClosed (And.intro E.approximationRatioClosed E.runtimeComplexityClosed))

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse