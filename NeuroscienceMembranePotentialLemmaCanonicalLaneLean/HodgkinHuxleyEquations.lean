import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : Prop
  ionChannelConductances : Prop
  gatingVariables : Prop
  currentBalanceEquation : Prop
  spikeInitiation : Prop

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance ∧ H.ionChannelConductances ∧ H.gatingVariables ∧
  H.currentBalanceEquation ∧ H.spikeInitiation

theorem hodgkin_huxley_closed_from_fields (H : HodgkinHuxleyPackage) :
  (H.membraneCapacitance → H.ionChannelConductances → H.gatingVariables →
    H.currentBalanceEquation → H.spikeInitiation → HodgkinHuxleyClosed H) := by
  intro mc ic gv cbe si
  exact And.intro mc (And.intro ic (And.intro gv (And.intro cbe si)))

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse