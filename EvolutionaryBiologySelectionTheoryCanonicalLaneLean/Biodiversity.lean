import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheory

structure BiodiversityMeasure where
  speciesRichness : Nat
  shannonIndex : Float
  evenness : Float
  abundance : List Float

theorem biodiversity_closed (B : BiodiversityMeasure) : B.speciesRichness > 0 := by
  apply Nat.zero_lt_succ

end EvolutionaryBiologySelectionTheory
end HautevilleHouse