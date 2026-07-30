import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure SynapticInputPackage where
  excitatoryConductance : ℝ
  inhibitoryConductance : ℝ
  reversalPotentialExcitatory : ℝ
  reversalPotentialInhibitory : ℝ
  synapticTiming : Type
  inputSummation : Prop
  conductanceDynamics : Prop

structure SynapticInputEvidence (S : SynapticInputPackage) where
  inputSummationClosed : S.inputSummation
  conductanceDynamicsClosed : S.conductanceDynamics

def SynapticInputClosed (S : SynapticInputPackage) : Prop :=
  S.inputSummation ∧ S.conductanceDynamics

theorem synaptic_input_closed_from_evidence (S : SynapticInputPackage) (E : SynapticInputEvidence S) :
    SynapticInputClosed S := by
  exact And.intro E.inputSummationClosed E.conductanceDynamicsClosed

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse