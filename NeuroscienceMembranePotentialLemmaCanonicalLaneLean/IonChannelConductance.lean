import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure IonChannelConductance where
  sodiumConductance : ℝ
  potassiumConductance : ℝ
  leakConductance : ℝ
  reversalPotentials : ℝ × ℝ × ℝ
  membraneCapacitance : ℝ

def IonChannelConductanceClosed (I : IonChannelConductance) : Prop :=
  I.sodiumConductance > 0 ∧ I.potassiumConductance > 0 ∧ I.leakConductance > 0

theorem ion_channel_conductance_closure (I : IonChannelConductance) :
    IonChannelConductanceClosed I := by
  exact And.intro (by positivity) (And.intro (by positivity) (by positivity))

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse