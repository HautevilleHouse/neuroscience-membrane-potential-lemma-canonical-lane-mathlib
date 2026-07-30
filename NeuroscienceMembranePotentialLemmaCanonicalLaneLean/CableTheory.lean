import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure CableTheoryPackage where
  axialResistance : Prop
  membraneResistance : Prop
  spaceConstant : Prop
  steadyStateSolution : Prop
  electrotonicLength : Prop

def CableTheoryClosed (C : CableTheoryPackage) : Prop :=
  C.axialResistance ∧ C.membraneResistance ∧ C.spaceConstant ∧
  C.steadyStateSolution ∧ C.electrotonicLength

theorem cable_theory_closed_from_fields (C : CableTheoryPackage) :
  (C.axialResistance → C.membraneResistance → C.spaceConstant →
    C.steadyStateSolution → C.electrotonicLength → CableTheoryClosed C) := by
  intro ar mr sc ss el
  exact And.intro ar (And.intro mr (And.intro sc (And.intro ss el)))

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse