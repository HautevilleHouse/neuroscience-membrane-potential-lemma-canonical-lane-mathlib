import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure IonChannelPackage where
  channelType : String
  activationKinetics : Prop
  inactivationKinetics : Prop
  conductance : ℝ
  reversalPotential : ℝ
  openProbability : ℝ

structure IonChannelEvidence (C : IonChannelPackage) where
  activationKineticsClosed : C.activationKinetics
  inactivationKineticsClosed : C.inactivationKinetics
  conductancePositive : C.conductance > 0
  reversalPotentialFinite : C.reversalPotential ≠ ∞

def IonChannelClosed (C : IonChannelPackage) : Prop :=
  C.activationKinetics ∧ C.inactivationKinetics ∧ C.conductance > 0 ∧ C.reversalPotential ≠ ∞

theorem ion_channel_closed_from_evidence (C : IonChannelPackage) (E : IonChannelEvidence C) : IonChannelClosed C := by
  exact And.intro E.activationKineticsClosed
    (And.intro E.inactivationKineticsClosed
      (And.intro E.conductancePositive E.reversalPotentialFinite))

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse