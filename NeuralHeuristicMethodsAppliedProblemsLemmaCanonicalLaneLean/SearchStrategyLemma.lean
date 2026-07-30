import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure SearchStrategyPackage where
  heuristicFunction : Prop
  searchAlgorithm : Prop
  nodeExpansionRule : Prop
  branchingFactorBound : Prop
  solutionGuarantee : Prop

structure SearchStrategyEvidence (S : SearchStrategyPackage) where
  heuristicFunctionClosed : S.heuristicFunction
  searchAlgorithmClosed : S.searchAlgorithm
  nodeExpansionRuleClosed : S.nodeExpansionRule
  branchingFactorBoundClosed : S.branchingFactorBound
  solutionGuaranteeClosed : S.solutionGuarantee

def SearchStrategyClosed (S : SearchStrategyPackage) : Prop :=
  S.heuristicFunction ∧ S.searchAlgorithm ∧ S.nodeExpansionRule ∧
  S.branchingFactorBound ∧ S.solutionGuarantee

theorem search_strategy_closed_from_evidence (S : SearchStrategyPackage)
    (E : SearchStrategyEvidence S) : SearchStrategyClosed S := by
  exact And.intro E.heuristicFunctionClosed
    (And.intro E.searchAlgorithmClosed
      (And.intro E.nodeExpansionRuleClosed
        (And.intro E.branchingFactorBoundClosed E.solutionGuaranteeClosed)))

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse