import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure NeuralHeuristicAdmittedObject where
  problem : Type
  featureRepresentation : Type
  heuristicFunction : problem → featureRepresentation → Prop
  solutionMatching : Prop
  conclusion : solutionMatching

structure NeuralHeuristicAdmissibleClass where
  object : NeuralHeuristicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : NeuralHeuristicAdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse