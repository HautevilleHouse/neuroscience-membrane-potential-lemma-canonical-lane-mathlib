import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure ActionPotentialPackage where
  thresholdPotential : ℝ
  peakPotential : ℝ
  undershootPotential : ℝ
  refractoryPeriod : ℝ
  actionPotentialEquation : Prop
  thresholdLessThanPeak : thresholdPotential < peakPotential
  peakGreaterThanResting : peakPotential > 0

structure ActionPotentialEvidence (A : ActionPotentialPackage) where
  actionPotentialEquationClosed : A.actionPotentialEquation
  thresholdLessThanPeakClosed : A.thresholdLessThanPeak
  peakGreaterThanRestingClosed : A.peakGreaterThanResting

def ActionPotentialClosed (A : ActionPotentialPackage) : Prop :=
  A.actionPotentialEquation ∧ A.thresholdLessThanPeak ∧ A.peakGreaterThanResting

theorem action_potential_closed_from_evidence (A : ActionPotentialPackage) (E : ActionPotentialEvidence A) :
    ActionPotentialClosed A := by
  exact And.intro E.actionPotentialEquationClosed (And.intro E.thresholdLessThanPeakClosed E.peakGreaterThanRestingClosed)

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse