import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure MembranePotentialLemmaPackage where
  restingPotential : ℝ
  thresholdPotential : ℝ
  passiveDynamics : Prop
  activeDynamics : Prop
  lemmaStatement : Prop

structure MembranePotentialLemmaEvidence (M : MembranePotentialLemmaPackage) where
  passiveDynamicsClosed : M.passiveDynamics
  activeDynamicsClosed : M.activeDynamics
  lemmaStatementClosed : M.lemmaStatement

def MembranePotentialLemmaClosed (M : MembranePotentialLemmaPackage) : Prop :=
  M.passiveDynamics ∧ M.activeDynamics ∧ M.lemmaStatement

theorem membrane_potential_lemma_closed_from_evidence (M : MembranePotentialLemmaPackage) (E : MembranePotentialLemmaEvidence M) :
    MembranePotentialLemmaClosed M := by
  exact And.intro E.passiveDynamicsClosed (And.intro E.activeDynamicsClosed E.lemmaStatementClosed)

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse