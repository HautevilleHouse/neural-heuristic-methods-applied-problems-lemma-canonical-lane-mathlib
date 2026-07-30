import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure OptimalityPackage (S : SearchStrategyPackage) where
  admissibleHeuristic : Prop
  consistencyCondition : Prop
  dominanceRelation : Prop
  optimalSolutionOnTermination : Prop

structure OptimalityEvidence {S : SearchStrategyPackage} (O : OptimalityPackage S) where
  admissibleHeuristicClosed : O.admissibleHeuristic
  consistencyConditionClosed : O.consistencyCondition
  dominanceRelationClosed : O.dominanceRelation
  optimalSolutionOnTerminationClosed : O.optimalSolutionOnTermination

def OptimalityClosed {S : SearchStrategyPackage} (O : OptimalityPackage S) : Prop :=
  O.admissibleHeuristic ∧ O.consistencyCondition ∧
  O.dominanceRelation ∧ O.optimalSolutionOnTermination

theorem optimality_closed_from_evidence {S : SearchStrategyPackage}
    (O : OptimalityPackage S) (E : OptimalityEvidence O) : OptimalityClosed O := by
  exact And.intro E.admissibleHeuristicClosed
    (And.intro E.consistencyConditionClosed
      (And.intro E.dominanceRelationClosed E.optimalSolutionOnTerminationClosed))

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse