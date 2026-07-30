import HautevilleHouse.NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean.NeuralHeuristicBase

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure HeuristicConvergencePackage (O : NeuralAdmittedObject) where
  initialGuess : Prop
  updateRule : Prop
  fixedPoint : Prop
  convergenceRate : Prop

structure HeuristicConvergenceEvidence (O : NeuralAdmittedObject) (H : HeuristicConvergencePackage O) where
  initialGuessClosed : H.initialGuess
  updateRuleClosed : H.updateRule
  fixedPointClosed : H.fixedPoint
  convergenceRateClosed : H.convergenceRate

def HeuristicConvergenceClosed (O : NeuralAdmittedObject) (H : HeuristicConvergencePackage O) : Prop :=
  H.initialGuess ∧ H.updateRule ∧ H.fixedPoint ∧ H.convergenceRate

theorem heuristic_convergence_closed_from_evidence (O : NeuralAdmittedObject) (H : HeuristicConvergencePackage O) (E : HeuristicConvergenceEvidence O H) :
    HeuristicConvergenceClosed O H := by
  exact And.intro E.initialGuessClosed (And.intro E.updateRuleClosed (And.intro E.fixedPointClosed E.convergenceRateClosed))

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse