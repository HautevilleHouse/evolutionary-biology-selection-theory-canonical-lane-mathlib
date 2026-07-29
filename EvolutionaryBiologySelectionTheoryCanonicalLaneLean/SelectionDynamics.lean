import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheoryCanonicalLaneLean

structure SelectionDynamicsPackage where
  genotypeFrequencies : ℕ → ℝ
  fitnessValues : ℝ → ℝ
  wrightFisherModel : Prop
  fixationProbability : ℝ
  selectionCoefficient : ℝ

structure SelectionDynamicsEvidence (S : SelectionDynamicsPackage) where
  wrightFisherModelClosed : S.wrightFisherModel
  fixationProbabilityPositive : S.fixationProbability > 0
  selectionCoefficientNonzero : S.selectionCoefficient ≠ 0

def SelectionDynamicsClosed (S : SelectionDynamicsPackage) : Prop :=
  S.wrightFisherModel ∧ (S.fixationProbability > 0) ∧ (S.selectionCoefficient ≠ 0)

theorem selection_dynamics_closed_from_evidence (S : SelectionDynamicsPackage)
    (E : SelectionDynamicsEvidence S) : SelectionDynamicsClosed S := by
  exact And.intro E.wrightFisherModelClosed
    (And.intro E.fixationProbabilityPositive E.selectionCoefficientNonzero)

end EvolutionaryBiologySelectionTheoryCanonicalLaneLean
end HautevilleHouse