import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure CrystalStructurePackage where
  latticeType : Type u
  basisVectors : Type v
  symmetryGroup : Type w
  bravaisLattice : Prop
  latticeParameters : Prop
  atomicPositions : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  bravaisLatticeClosed : C.bravaisLattice
  latticeParametersClosed : C.latticeParameters
  atomicPositionsClosed : C.atomicPositions

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.bravaisLattice ∧ C.latticeParameters ∧ C.atomicPositions

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.latticeParametersClosed E.atomicPositionsClosed)

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse