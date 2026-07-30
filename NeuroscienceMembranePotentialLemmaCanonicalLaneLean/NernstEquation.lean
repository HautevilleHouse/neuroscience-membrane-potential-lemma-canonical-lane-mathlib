import NeuroscienceMembranePotentialLemmaCanonicalLaneLean.MembranePotentialObjects

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure NernstEquationPackage (O : NeuronMembranePotentialAdmittedObject) where
  ionSpecies : Type u
  valence : ionSpecies → ℤ
  concentrations : ionSpecies → ℝ
  equilibriumPotential : ionSpecies → ℝ
  nernstFormula : Prop

structure NernstEquationEvidence {O : NeuronMembranePotentialAdmittedObject}
    (N : NernstEquationPackage O) where
  valenceClosed : N.valence = fun _ => 1
  concentrationsClosed : ∀ s, N.concentrations s > 0
  nernstFormulaClosed : N.nernstFormula

def NernstEquationClosed {O : NeuronMembranePotentialAdmittedObject}
    (N : NernstEquationPackage O) : Prop :=
  (∀ s, N.valence s = 1) ∧ (∀ s, N.concentrations s > 0) ∧ N.nernstFormula

theorem nernst_equation_closed_from_evidence
    {O : NeuronMembranePotentialAdmittedObject}
    (N : NernstEquationPackage O) (E : NernstEquationEvidence N) :
    NernstEquationClosed N := by
  exact And.intro (fun s => E.valenceClosed) (And.intro E.concentrationsClosed E.nernstFormulaClosed)

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse