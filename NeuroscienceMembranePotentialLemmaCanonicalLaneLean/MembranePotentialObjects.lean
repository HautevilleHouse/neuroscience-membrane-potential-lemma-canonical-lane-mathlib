import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NeuronMembraneSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuronMembranePotentialAdmittedObject where
  space : NeuronMembraneSpace
  membranePotential : space.carrier → ℝ
  ionChannelConductance : Prop
  nernstEquilibrium : Prop
  conclusion : membranePotential = fun x => -70.0

def MembranePotentialWitnessClosed (O : NeuronMembranePotentialAdmittedObject) : Prop :=
  O.membranePotential = fun x => -70.0

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse