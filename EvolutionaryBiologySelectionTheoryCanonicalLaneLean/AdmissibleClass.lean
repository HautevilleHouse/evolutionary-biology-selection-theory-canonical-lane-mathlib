import EvolutionaryBiologySelectionTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : SelectionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SelectionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EvolutionaryBiologySelectionTheoryCanonicalLaneLean
end HautevilleHouse