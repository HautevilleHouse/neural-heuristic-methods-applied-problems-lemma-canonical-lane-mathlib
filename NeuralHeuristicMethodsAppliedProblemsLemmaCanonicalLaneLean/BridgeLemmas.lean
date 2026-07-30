import HautevilleHouse.NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuralHeuristicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse