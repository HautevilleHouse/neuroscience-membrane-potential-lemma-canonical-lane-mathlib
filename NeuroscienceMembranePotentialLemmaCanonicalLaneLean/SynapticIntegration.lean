import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure SynapticIntegrationPackage where
  excitatoryPostsynapticPotential : Prop
  inhibitoryPostsynapticPotential : Prop
  temporalSummation : Prop
  spatialSummation : Prop
  thresholdCrossing : Prop

def SynapticIntegrationClosed (S : SynapticIntegrationPackage) : Prop :=
  S.excitatoryPostsynapticPotential ∧ S.inhibitoryPostsynapticPotential ∧
  S.temporalSummation ∧ S.spatialSummation ∧ S.thresholdCrossing

theorem synaptic_integration_closed_from_fields (S : SynapticIntegrationPackage) :
  (S.excitatoryPostsynapticPotential → S.inhibitoryPostsynapticPotential →
    S.temporalSummation → S.spatialSummation → S.thresholdCrossing →
    SynapticIntegrationClosed S) := by
  intro eps ips ts ss tc
  exact And.intro eps (And.intro ips (And.intro ts (And.intro ss tc)))

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse