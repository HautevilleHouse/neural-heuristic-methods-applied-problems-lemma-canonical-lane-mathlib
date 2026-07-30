import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean

structure DeepQNetworkArchitecture where
  inputDimension : ℕ
  hiddenLayers : List ℕ
  outputDimension : ℕ
  activationFunction : String
  targetNetwork : Bool

def DQNArchitectureClosed (D : DeepQNetworkArchitecture) : Prop :=
  D.inputDimension > 0 ∧ D.outputDimension > 0 ∧ D.targetNetwork = true

end NeuralHeuristicMethodsAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse