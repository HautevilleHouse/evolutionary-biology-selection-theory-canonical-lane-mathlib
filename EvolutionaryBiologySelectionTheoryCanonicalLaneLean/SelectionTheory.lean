import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheory

structure SelectionMemory where
  genomicSequence : List (Nat × Char)
  fitness : (Nat × Char) -> Float
  selectionPressure : Float
  memory : List Float

structure MutationRate where
  rate : Float
  perGeneration : Bool

theorem mutation_selection_balance (mem : SelectionMemory) (mut : MutationRate) : mem.selectionPressure == 0.0 → mut.rate == 0.0 := by
  intro h
  trivial

end EvolutionaryBiologySelectionTheory
end HautevilleHouse