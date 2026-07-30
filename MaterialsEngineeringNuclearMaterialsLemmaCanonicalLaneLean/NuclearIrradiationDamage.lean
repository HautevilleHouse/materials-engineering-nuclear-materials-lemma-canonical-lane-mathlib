import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure NuclearIrradiationDamagePackage where
  displacementCascade : Type u
  defectFormation : Type v
  radiationHardening : Prop
  voidSwelling : Prop
  irradiationCreep : Prop

structure NuclearIrradiationDamageEvidence (N : NuclearIrradiationDamagePackage) where
  radiationHardeningClosed : N.radiationHardening
  voidSwellingClosed : N.voidSwelling
  irradiationCreepClosed : N.irradiationCreep

def NuclearIrradiationDamageClosed (N : NuclearIrradiationDamagePackage) : Prop :=
  N.radiationHardening ∧ N.voidSwelling ∧ N.irradiationCreep

theorem nuclear_irradiation_damage_closed_from_evidence (N : NuclearIrradiationDamagePackage) (E : NuclearIrradiationDamageEvidence N) :
    NuclearIrradiationDamageClosed N := by
  exact And.intro E.radiationHardeningClosed (And.intro E.voidSwellingClosed E.irradiationCreepClosed)

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse