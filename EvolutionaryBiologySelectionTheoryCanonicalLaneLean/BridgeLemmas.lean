import EvolutionaryBiologySelectionTheoryCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SelectionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EvolutionaryBiologySelectionTheoryCanonicalLaneLean
end HautevilleHouse