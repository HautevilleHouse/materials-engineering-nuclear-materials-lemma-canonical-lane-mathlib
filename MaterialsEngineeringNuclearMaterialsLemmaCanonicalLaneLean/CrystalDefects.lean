import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure CrystalDefectPackage where
  pointDefects : Prop
  lineDefects : Prop
  planarDefects : Prop
  volumetricDefects : Prop
  radiationInducedDefects : Prop

def CrystalDefectClosed (D : CrystalDefectPackage) : Prop :=
  D.pointDefects ∧ D.lineDefects ∧ D.planarDefects ∧ D.volumetricDefects ∧ D.radiationInducedDefects

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse