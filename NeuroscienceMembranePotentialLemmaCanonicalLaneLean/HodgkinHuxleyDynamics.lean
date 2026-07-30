import NeuroscienceMembranePotentialLemmaCanonicalLaneLean.MembranePotentialObjects

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage (O : NeuronMembranePotentialAdmittedObject) where
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakageChannel : Prop
  membraneCapacitance : Prop
  voltageEquation : Prop

structure HodgkinHuxleyDynamicsEvidence {O : NeuronMembranePotentialAdmittedObject}
    (H : HodgkinHuxleyDynamicsPackage O) where
  sodiumChannelClosed : H.sodiumChannel
  potassiumChannelClosed : H.potassiumChannel
  leakageChannelClosed : H.leakageChannel
  membraneCapacitanceClosed : H.membraneCapacitance
  voltageEquationClosed : H.voltageEquation

def HodgkinHuxleyDynamicsClosed {O : NeuronMembranePotentialAdmittedObject}
    (H : HodgkinHuxleyDynamicsPackage O) : Prop :=
  H.sodiumChannel ∧ H.potassiumChannel ∧ H.leakageChannel ∧ H.membraneCapacitance ∧ H.voltageEquation

theorem hodgkin_huxley_dynamics_closed_from_evidence
    {O : NeuronMembranePotentialAdmittedObject}
    (H : HodgkinHuxleyDynamicsPackage O) (E : HodgkinHuxleyDynamicsEvidence H) :
    HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.sodiumChannelClosed (And.intro E.potassiumChannelClosed
    (And.intro E.leakageChannelClosed (And.intro E.membraneCapacitanceClosed E.voltageEquationClosed)))

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse