import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure NeuralHeuristicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuralAdmittedObject where
  space : NeuralHeuristicSpace
  problemStatement : Prop
  heuristicMethod : Prop
  convergenceGuarantee : Prop
  performanceBound : Prop
  conclusion : convergenceGuarantee ∧ performanceBound

structure NeuralHeuristicEndgameState where
  object : NeuralAdmittedObject

def NeuralHeuristicWitnessClosed (O : NeuralAdmittedObject) : Prop :=
  O.conclusion

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse