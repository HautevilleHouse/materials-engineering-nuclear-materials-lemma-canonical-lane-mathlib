import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure RadiationHardeningPackage where
  defectClusterDensity : Prop
  obstacleStrengthDistribution : Prop
  criticalResolvedShearStress : Prop
  dispersedBarrierHardeningModel : Prop
  irradiationTemperatureEffect : Prop

structure RadiationHardeningEvidence (H : RadiationHardeningPackage) where
  defectClusterDensityClosed : H.defectClusterDensity
  obstacleStrengthDistributionClosed : H.obstacleStrengthDistribution
  criticalResolvedShearStressClosed : H.criticalResolvedShearStress
  dispersedBarrierHardeningModelClosed : H.dispersedBarrierHardeningModel
  irradiationTemperatureEffectClosed : H.irradiationTemperatureEffect

def RadiationHardeningClosed (H : RadiationHardeningPackage) : Prop :=
  H.defectClusterDensity ∧ H.obstacleStrengthDistribution ∧
  H.criticalResolvedShearStress ∧ H.dispersedBarrierHardeningModel ∧
  H.irradiationTemperatureEffect

theorem radiation_hardening_closed_from_evidence
    (H : RadiationHardeningPackage) (E : RadiationHardeningEvidence H) :
    RadiationHardeningClosed H := by
  exact And.intro E.defectClusterDensityClosed
    (And.intro E.obstacleStrengthDistributionClosed
      (And.intro E.criticalResolvedShearStressClosed
        (And.intro E.dispersedBarrierHardeningModelClosed
          E.irradiationTemperatureEffectClosed)))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse