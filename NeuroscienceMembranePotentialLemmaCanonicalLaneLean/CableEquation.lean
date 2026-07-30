import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure CableEquationPackage where
  axialResistance : ℝ
  membraneCapacitance : ℝ
  membraneConductance : ℝ
  spatialDomain : ℝ → ℝ
  timeDomain : ℝ → ℝ
  potential : ℝ → ℝ → ℝ

def CableEquationClosed (C : CableEquationPackage) : Prop :=
  C.axialResistance > 0 ∧ C.membraneCapacitance > 0 ∧ C.membraneConductance > 0

structure CableEquationEvidence (C : CableEquationPackage) where
  axialResistancePositive : C.axialResistance > 0
  membraneCapacitancePositive : C.membraneCapacitance > 0
  membraneConductancePositive : C.membraneConductance > 0

theorem cable_equation_closed_from_evidence (C : CableEquationPackage) (E : CableEquationEvidence C) : CableEquationClosed C := by
  exact And.intro E.axialResistancePositive
    (And.intro E.membraneCapacitancePositive E.membraneConductancePositive)

theorem passive_decay_lemma {C : CableEquationPackage} (CEClosed : CableEquationClosed C) :
  ∀ x : ℝ, ∀ t : ℝ, C.potential x t = C.potential 0 0 * Real.exp (-x / sqrt (C.axialResistance / (C.membraneConductance))) := by
  sorry

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse