import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure CorrosionOxidationPackage where
  aqueousCorrosion : Prop
  highTemperatureOxidation : Prop
  stressCorrosionCracking : Prop
  radiationEnhancedCorrosion : Prop
  protectiveOxideGrowth : Prop

def CorrosionOxidationClosed (C : CorrosionOxidationPackage) : Prop :=
  C.aqueousCorrosion ∧ C.highTemperatureOxidation ∧ C.stressCorrosionCracking ∧ C.radiationEnhancedCorrosion ∧ C.protectiveOxideGrowth

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse