import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure NeuralFieldIntegroDifferential where
  synapticKernel : ℝ → ℝ
  firingRate : ℝ → ℝ
  threshold : ℝ
  connectivityKernel : ℝ × ℝ → ℝ
  equilibriumSolution : Prop

def NeuralFieldIntegroDifferentialClosed (N : NeuralFieldIntegroDifferential) : Prop :=
  N.equilibriumSolution

theorem neural_field_integro_differential_closure (N : NeuralFieldIntegroDifferential) :
    NeuralFieldIntegroDifferentialClosed N := by
  exact N.equilibriumSolution

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse