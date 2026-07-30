import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MembranePotentialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse