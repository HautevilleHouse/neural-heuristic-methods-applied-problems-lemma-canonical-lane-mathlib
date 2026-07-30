import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure HeuristicOptimalTransportPackage where
  sourceMeasure : Type u
  targetMeasure : Type v
  costFunction : sourceMeasure → targetMeasure → ℝ
  transportPlan : Type w
  heuristicCost : Prop
  heuristicCostClosed : heuristicCost
  optimalPlanExists : Prop
  optimalPlanExistsClosed : optimalPlanExists
  entropyRegularization : Prop
  entropyRegularizationClosed : entropyRegularization

structure HeuristicOptimalTransportEvidence (H : HeuristicOptimalTransportPackage) where
  heuristicCostClosed : H.heuristicCost
  optimalPlanExistsClosed : H.optimalPlanExists
  entropyRegularizationClosed : H.entropyRegularization

def HeuristicOptimalTransportClosed (H : HeuristicOptimalTransportPackage) : Prop :=
  H.heuristicCost ∧ H.optimalPlanExists ∧ H.entropyRegularization

theorem heuristic_optimal_transport_closed_from_evidence
    (H : HeuristicOptimalTransportPackage) (E : HeuristicOptimalTransportEvidence H) :
    HeuristicOptimalTransportClosed H := by
  exact And.intro E.heuristicCostClosed (And.intro E.optimalPlanExistsClosed E.entropyRegularizationClosed)

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse