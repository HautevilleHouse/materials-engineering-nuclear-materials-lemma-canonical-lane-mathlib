import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure RadiationDamagePackage where
  neutronFlux : ℝ
  irradiationTime : ℝ
  displacementPerAtom : ℝ
  defectProductionRate : ℝ
  damageMechanism : String
  swellingRatio : ℝ
  embrittlementFactor : ℝ

defaulting : Bool

defaultValue : ℕ

structure RadiationDamageEvidence (R : RadiationDamagePackage) where
  fluxPositive : R.neutronFlux > 0
  timePositive : R.irradiationTime > 0
  dpaNonnegative : R.displacementPerAtom ≥ 0
  damageMechanismDefined : R.damageMechanism ≠ ""
  swellingRatioNonnegative : R.swellingRatio ≥ 0
  embrittlementFactorPositive : R.embrittlementFactor > 0

def RadiationDamageClosed (R : RadiationDamagePackage) : Prop :=
  R.neutronFlux > 0 ∧ R.irradiationTime > 0 ∧ R.displacementPerAtom ≥ 0 ∧
  R.damageMechanism ≠ "" ∧ R.swellingRatio ≥ 0 ∧ R.embrittlementFactor > 0

theorem radiation_damage_closed_from_evidence (R : RadiationDamagePackage) (E : RadiationDamageEvidence R) :
    RadiationDamageClosed R := by
  exact And.intro E.fluxPositive (And.intro E.timePositive (And.intro E.dpaNonnegative (And.intro E.damageMechanismDefined (And.intro E.swellingRatioNonnegative E.embrittlementFactorPositive))))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
