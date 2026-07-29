import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologySelectionTheory

structure PhylogeneticTree where
  leafLabels : List String
  branchLengths : List Float
  root : String
  topology : Prop

theorem phylogenetic_tree_consistent (T : PhylogeneticTree) : T.topology := by
  exact T.topology

end EvolutionaryBiologySelectionTheory
end HautevilleHouse