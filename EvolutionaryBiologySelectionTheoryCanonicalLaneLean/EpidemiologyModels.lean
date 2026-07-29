import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheoryCanonicalLaneLean

structure EpidemiologyModelsPackage where
  susceptible : Float
  infected : Float
  recovered : Float
  reproductionNumber : Float
  sirEquations : Prop
  herdImmunityThreshold : Prop
  compartmentModelClosed : Prop

structure EpidemiologyModelsEvidence (E : EpidemiologyModelsPackage) where
  sirEquationsClosed : E.sirEquations
  herdImmunityThresholdClosed : E.herdImmunityThreshold
  compartmentModelClosed : E.compartmentModelClosed

def EpidemiologyModelsClosed (E : EpidemiologyModelsPackage) : Prop :=
  E.sirEquations ∧ E.herdImmunityThreshold ∧ E.compartmentModelClosed

theorem epidemiology_models_closed_from_evidence (E : EpidemiologyModelsPackage) (E2 : EpidemiologyModelsEvidence E) : EpidemiologyModelsClosed E := by
  exact And.intro E2.sirEquationsClosed (And.intro E2.herdImmunityThresholdClosed E2.compartmentModelClosed)

end EvolutionaryBiologySelectionTheoryCanonicalLaneLean
end HautevilleHouse