import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure NernstPotentialPackage where
  ionValence : ℤ
  ionConcentrationInside : ℝ
  ionConcentrationOutside : ℝ
  temperature : ℝ
  gasConstant : ℝ
  faradayConstant : ℝ
  nernstEquation : Prop
  valenceNonZero : ionValence ≠ 0
  concentrationsPositive : ionConcentrationInside > 0 ∧ ionConcentrationOutside > 0

def nernstPotential (N : NernstPotentialPackage) : ℝ :=
  (N.gasConstant * N.temperature / (N.faradayConstant * (N.ionValence : ℝ))) *
    Real.log (N.ionConcentrationOutside / N.ionConcentrationInside)

structure NernstPotentialEvidence (N : NernstPotentialPackage) where
  nernstEquationClosed : N.nernstEquation
  valenceNonZeroClosed : N.valenceNonZero
  concentrationsPositiveClosed : N.concentrationsPositive

def NernstPotentialClosed (N : NernstPotentialPackage) : Prop :=
  N.nernstEquation ∧ N.valenceNonZero ∧ N.concentrationsPositive

theorem nernst_potential_closed_from_evidence (N : NernstPotentialPackage) (E : NernstPotentialEvidence N) :
    NernstPotentialClosed N := by
  exact And.intro E.nernstEquationClosed (And.intro E.valenceNonZeroClosed E.concentrationsPositiveClosed)

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse