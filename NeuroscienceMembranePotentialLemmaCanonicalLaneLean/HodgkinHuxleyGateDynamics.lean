import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure HodgkinHuxleyGateDynamics where
  mGateState : Prop
  nGateState : Prop
  hGateState : Prop
  voltageClampCondition : Prop
  steadyStateActivation : Prop

def HodgkinHuxleyGateClosed (H : HodgkinHuxleyGateDynamics) : Prop :=
  H.steadyStateActivation

theorem hodgkin_huxley_gate_closure (H : HodgkinHuxleyGateDynamics) :
    HodgkinHuxleyGateClosed H := by
  exact H.steadyStateActivation

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse