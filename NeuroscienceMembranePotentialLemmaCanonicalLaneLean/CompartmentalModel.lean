import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure CompartmentalModelPackage where
  passiveMembraneProperties : Prop
  activeConductances : Prop
  morphologySegmentation : Prop
  cableEquationDiscretization : Prop
  simulationTimeStep : Prop

def CompartmentalModelClosed (C : CompartmentalModelPackage) : Prop :=
  C.passiveMembraneProperties ∧ C.activeConductances ∧ C.morphologySegmentation ∧
  C.cableEquationDiscretization ∧ C.simulationTimeStep

theorem compartmental_model_closed_from_fields (C : CompartmentalModelPackage) :
  (C.passiveMembraneProperties → C.activeConductances → C.morphologySegmentation →
    C.cableEquationDiscretization → C.simulationTimeStep → CompartmentalModelClosed C) := by
  intro pmp ac ms ced sts
  exact And.intro pmp (And.intro ac (And.intro ms (And.intro ced sts)))

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse