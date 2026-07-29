import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheoryCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  strategySet : Type
  payoffMatrix : Type
  replicatorEquation : Prop
  nashEquilibrium : Prop
  evolutionaryStableState : Prop
  payoffAdmissible : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  replicatorEquationClosed : E.replicatorEquation
  nashEquilibriumClosed : E.nashEquilibrium
  evolutionaryStableStateClosed : E.evolutionaryStableState
  payoffAdmissibleClosed : E.payoffAdmissible

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.replicatorEquation ∧ E.nashEquilibrium ∧ E.evolutionaryStableState ∧ E.payoffAdmissible

theorem evolutionary_game_theory_closed_from_evidence (E : EvolutionaryGameTheoryPackage) (E2 : EvolutionaryGameTheoryEvidence E) : EvolutionaryGameTheoryClosed E := by
  exact And.intro E2.replicatorEquationClosed (And.intro E2.nashEquilibriumClosed (And.intro E2.evolutionaryStableStateClosed E2.payoffAdmissibleClosed))

end EvolutionaryBiologySelectionTheoryCanonicalLaneLean
end HautevilleHouse