import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure ActionPotentialDynamicsPackage where
  sodiumActivation : Prop
  sodiumInactivation : Prop
  potassiumActivation : Prop
  refractoryPeriod : Prop
  propagationVelocity : Prop

def ActionPotentialDynamicsClosed (A : ActionPotentialDynamicsPackage) : Prop :=
  A.sodiumActivation ∧ A.sodiumInactivation ∧ A.potassiumActivation ∧
  A.refractoryPeriod ∧ A.propagationVelocity

theorem action_potential_dynamics_closed_from_fields (A : ActionPotentialDynamicsPackage) :
  (A.sodiumActivation → A.sodiumInactivation → A.potassiumActivation →
    A.refractoryPeriod → A.propagationVelocity → ActionPotentialDynamicsClosed A) := by
  intro sa si ka rp pv
  exact And.intro sa (And.intro si (And.intro ka (And.intro rp pv)))

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse