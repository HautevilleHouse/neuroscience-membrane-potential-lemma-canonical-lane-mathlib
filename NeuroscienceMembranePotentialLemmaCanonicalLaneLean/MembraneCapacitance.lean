import NeuroscienceMembranePotentialLemmaCanonicalLaneLean.HodgkinHuxleyDynamics

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure MembraneCapacitancePackage {O : NeuronMembranePotentialAdmittedObject}
    (H : HodgkinHuxleyDynamicsPackage O) where
  capacitanceValue : ℝ
  capacitancePositive : capacitanceValue > 0
  chargingEquation : Prop

structure MembraneCapacitanceEvidence {O : NeuronMembranePotentialAdmittedObject}
    {H : HodgkinHuxleyDynamicsPackage O} (C : MembraneCapacitancePackage H) where
  capacitancePositiveClosed : C.capacitancePositive
  chargingEquationClosed : C.chargingEquation

def MembraneCapacitanceClosed {O : NeuronMembranePotentialAdmittedObject}
    {H : HodgkinHuxleyDynamicsPackage O} (C : MembraneCapacitancePackage H) : Prop :=
  C.capacitancePositive ∧ C.chargingEquation

theorem membrane_capacitance_closed_from_evidence
    {O : NeuronMembranePotentialAdmittedObject} {H : HodgkinHuxleyDynamicsPackage O}
    (C : MembraneCapacitancePackage H) (E : MembraneCapacitanceEvidence C) :
    MembraneCapacitanceClosed C := by
  exact And.intro E.capacitancePositiveClosed E.chargingEquationClosed

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse