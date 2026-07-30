import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure NeuralNetworkApproximationPackage (S : SearchStrategyPackage) (O : OptimalityPackage S) where
  networkArchitecture : Prop
  trainingProcedure : Prop
  approximationErrorBound : Prop
  generalizationGuarantee : Prop

structure NeuralNetworkApproximationEvidence {S : SearchStrategyPackage}
    {O : OptimalityPackage S} (N : NeuralNetworkApproximationPackage S O) where
  networkArchitectureClosed : N.networkArchitecture
  trainingProcedureClosed : N.trainingProcedure
  approximationErrorBoundClosed : N.approximationErrorBound
  generalizationGuaranteeClosed : N.generalizationGuarantee

def NeuralNetworkApproximationClosed {S : SearchStrategyPackage}
    {O : OptimalityPackage S} (N : NeuralNetworkApproximationPackage S O) : Prop :=
  N.networkArchitecture ∧ N.trainingProcedure ∧
  N.approximationErrorBound ∧ N.generalizationGuarantee

theorem neural_network_approximation_closed_from_evidence
    {S : SearchStrategyPackage} {O : OptimalityPackage S}
    (N : NeuralNetworkApproximationPackage S O)
    (E : NeuralNetworkApproximationEvidence N) : NeuralNetworkApproximationClosed N := by
  exact And.intro E.networkArchitectureClosed
    (And.intro E.trainingProcedureClosed
      (And.intro E.approximationErrorBoundClosed E.generalizationGuaranteeClosed))

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse