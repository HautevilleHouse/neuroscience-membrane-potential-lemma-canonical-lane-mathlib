import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure NernstGoldmanPackage where
  equilibriumPotential : Prop
  valenceNumber : Prop
  ionConcentrationGradient : Prop
  temperatureTerm : Prop
  goldmanHodgkinKatzEquation : Prop

def NernstGoldmanClosed (N : NergstGoldmanPackage) : Prop :=
  N.equilibriumPotential ∧ N.valenceNumber ∧ N.ionConcentrationGradient ∧
  N.temperatureTerm ∧ N.goldmanHodgkinKatzEquation

theorem nernst_goldman_closed_from_fields (N : NernstGoldmanPackage) :
  (N.equilibriumPotential → N.valenceNumber → N.ionConcentrationGradient →
    N.temperatureTerm → N.goldmanHodgkinKatzEquation → NernstGoldmanClosed N) := by
  intro ep vn icg tt ghk
  exact And.intro ep (And.intro vn (And.intro icg (And.intro tt ghk)))

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse