import NeuroscienceMembranePotentialLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "NeuroscienceMembranePotentialLemmaCanonicalLaneLean",
    theoremName := "Membrane Potential Lemma",
    theoremObject := "Cortical neural field with Hodgkin-Huxley kinetics",
    classicalBoundary := "The membrane potential satisfies the Nernst-Planck equation under ionic gradients.",
    manifoldConstrainedStatement := "Membrane potential dynamics constrained by Hodgkin-Huxley conductances and Hebbian plasticity.",
    certificateLane := "manifold_constrained",
    carriedRemainder := "Classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end NeuroscienceMembranePotentialLemmaCanonicalLaneLean
end HautevilleHouse
