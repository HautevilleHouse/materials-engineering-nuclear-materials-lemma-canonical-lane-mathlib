import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure CrystalLattice (A : AdmissibleClass) where
  unitCellVolume : ℝ
  latticeParameters : Type u
  bravaisLattice : Type v
  symmetryGroup : Type w

structure CrystalLatticeEvidence (A : AdmissibleClass) (C : CrystalLattice A) where
  unitCellVolumePositive : C.unitCellVolume > 0
  latticeParametersDefined : Nonempty C.latticeParameters
  bravaisLatticeDefined : Nonempty C.bravaisLattice
  symmetryGroupDefined : Nonempty C.symmetryGroup

def CrystalLatticeClosed (A : AdmissibleClass) (C : CrystalLattice A) : Prop :=
  C.unitCellVolume > 0 ∧ Nonempty C.latticeParameters ∧
  Nonempty C.bravaisLattice ∧ Nonempty C.symmetryGroup

theorem crystal_lattice_closed_from_evidence (A : AdmissibleClass) (C : CrystalLattice A)
    (E : CrystalLatticeEvidence A C) : CrystalLatticeClosed A C :=
  And.intro E.unitCellVolumePositive (And.intro E.latticeParametersDefined
    (And.intro E.bravaisLatticeDefined E.symmetryGroupDefined))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse