import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheoryCanonicalLaneLean

structure PopulationDynamicsPackage where
  populationSize : Nat
  birthRate : Float
  deathRate : Float
  carryingCapacity : Float
  logisticGrowthEquation : Prop
  equilibriumStable : Prop
  deterministicModelCalibrated : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  logisticGrowthEquationClosed : P.logisticGrowthEquation
  equilibriumStableClosed : P.equilibriumStable
  deterministicModelCalibratedClosed : P.deterministicModelCalibrated

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.logisticGrowthEquation ∧ P.equilibriumStable ∧ P.deterministicModelCalibrated

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.logisticGrowthEquationClosed (And.intro E.equilibriumStableClosed E.deterministicModelCalibratedClosed)

end EvolutionaryBiologySelectionTheoryCanonicalLaneLean
end HautevilleHouse