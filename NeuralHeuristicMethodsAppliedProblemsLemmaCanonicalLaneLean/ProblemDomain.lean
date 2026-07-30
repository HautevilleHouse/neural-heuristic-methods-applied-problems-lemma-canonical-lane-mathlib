import HautevilleHouse.NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure NeuralHeuristicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuralHeuristicAdmittedObject where
  space : NeuralHeuristicSpace
  problemDomain : Prop
  heuristicApplicable : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionExists : Prop
  conclusion : solutionExists

structure NeuralHeuristicEndgameState where
  object : NeuralHeuristicAdmittedObject

def NeuralHeuristicWitnessClosed (O : NeuralHeuristicAdmittedObject) : Prop :=
  O.solutionExists

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse