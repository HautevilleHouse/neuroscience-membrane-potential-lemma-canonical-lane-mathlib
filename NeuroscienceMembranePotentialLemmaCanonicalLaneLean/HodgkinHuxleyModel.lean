import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : ℝ
  sodiumChannel : IonChannelPackage
  potassiumChannel : IonChannelPackage
  leakChannel : IonChannelPackage
  injectedCurrent : ℝ → ℝ
  membranePotential : ℝ → ℝ
  gatingVariables : String → ℝ → ℝ

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance > 0 ∧
  IonChannelClosed H.sodiumChannel ∧
  IonChannelClosed H.potassiumChannel ∧
  IonChannelClosed H.leakChannel

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membraneCapacitancePositive : H.membraneCapacitance > 0
  sodiumChannelClosed : IonChannelClosed H.sodiumChannel
  potassiumChannelClosed : IonChannelClosed H.potassiumChannel
  leakChannelClosed : IonChannelClosed H.leakChannel

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitancePositive
    (And.intro E.sodiumChannelClosed
      (And.intro E.potassiumChannelClosed E.leakChannelClosed))

theorem membrane_potential_lemma {H : HodgkinHuxleyPackage} (HHClosed : HodgkinHuxleyClosed H) :
  ∃ t : ℝ, H.membranePotential t = -65 := by
  sorry

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse