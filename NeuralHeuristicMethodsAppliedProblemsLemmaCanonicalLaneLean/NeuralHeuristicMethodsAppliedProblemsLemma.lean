import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : NeuralHeuristicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuralHeuristicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse