import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheoryCanonicalLaneLean

structure AdaptiveDynamicsPackage where
  traitSpace : Type u
  fitnessLandscape : Type v
  canonicalEquation : Prop
  evolutionarySingularity : Prop
  traitSubstitutionSequence : Prop

structure AdaptiveDynamicsEvidence (A : AdaptiveDynamicsPackage) where
  canonicalEquationClosed : A.canonicalEquation
  evolutionarySingularityClosed : A.evolutionarySingularity
  traitSubstitutionSequenceClosed : A.traitSubstitutionSequence

def AdaptiveDynamicsClosed (A : AdaptiveDynamicsPackage) : Prop :=
  A.canonicalEquation ∧ A.evolutionarySingularity ∧ A.traitSubstitutionSequence

theorem adaptive_dynamics_closed_from_evidence (A : AdaptiveDynamicsPackage) (E : AdaptiveDynamicsEvidence A) : AdaptiveDynamicsClosed A := by
  exact And.intro E.canonicalEquationClosed (And.intro E.evolutionarySingularityClosed E.traitSubstitutionSequenceClosed)

end EvolutionaryBiologySelectionTheoryCanonicalLaneLean
end HautevilleHouse