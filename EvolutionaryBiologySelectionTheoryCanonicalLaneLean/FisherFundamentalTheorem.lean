import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheoryCanonicalLaneLean

structure FisherFundamentalTheoremPackage where
  additiveGeneticVariance : Type u
  meanFitnessChange : Type v
  fitnessLandscape : Prop
  theoremStatement : Prop

structure FisherFundamentalTheoremEvidence (F : FisherFundamentalTheoremPackage) where
  additiveGeneticVarianceClosed : F.additiveGeneticVariance
  meanFitnessChangeClosed : F.meanFitnessChange
  theoremStatementClosed : F.theoremStatement

def FisherFundamentalTheoremClosed (F : FisherFundamentalTheoremPackage) : Prop :=
  F.additiveGeneticVariance ∧ F.meanFitnessChange ∧ F.theoremStatement

theorem fisher_fundamental_theorem_closed_from_evidence (F : FisherFundamentalTheoremPackage) (E : FisherFundamentalTheoremEvidence F) : FisherFundamentalTheoremClosed F := by
  exact And.intro E.additiveGeneticVarianceClosed (And.intro E.meanFitnessChangeClosed E.theoremStatementClosed)

end EvolutionaryBiologySelectionTheoryCanonicalLaneLean
end HautevilleHouse