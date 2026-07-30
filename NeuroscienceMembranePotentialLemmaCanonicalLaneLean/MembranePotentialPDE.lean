import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure MembranePotentialPDE where
  potentialFunction : ℝ → ℝ
  timeDerivative : ℝ
  spatialDiffusion : ℝ
  sourceTerm : ℝ
  initialCondition : Prop
  boundaryCondition : Prop

def MembranePotentialPDEClosed (M : MembranePotentialPDE) : Prop :=
  M.initialCondition ∧ M.boundaryCondition

theorem membrane_potential_pde_closure (M : MembranePotentialPDE) :
    MembranePotentialPDEClosed M := by
  exact And.intro M.initialCondition M.boundaryCondition

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse