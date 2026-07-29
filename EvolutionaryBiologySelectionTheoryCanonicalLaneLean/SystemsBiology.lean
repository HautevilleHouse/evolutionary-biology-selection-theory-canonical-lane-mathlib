import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheoryCanonicalLaneLean

structure SystemsBiologyPackage where
  geneRegulatoryNetwork : Type
  reactionKinetics : Type
  feedbackLoops : Prop
  homeostasis : Prop
  signalingPathways : Prop
  networkRobustness : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  feedbackLoopsClosed : S.feedbackLoops
  homeostasisClosed : S.homeostasis
  signalingPathwaysClosed : S.signalingPathways
  networkRobustnessClosed : S.networkRobustness

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.feedbackLoops ∧ S.homeostasis ∧ S.signalingPathways ∧ S.networkRobustness

theorem systems_biology_closed_from_evidence (S : SystemsBiologyPackage) (E : SystemsBiologyEvidence S) : SystemsBiologyClosed S := by
  exact And.intro E.feedbackLoopsClosed (And.intro E.homeostasisClosed (And.intro E.signalingPathwaysClosed E.networkRobustnessClosed))

end EvolutionaryBiologySelectionTheoryCanonicalLaneLean
end HautevilleHouse