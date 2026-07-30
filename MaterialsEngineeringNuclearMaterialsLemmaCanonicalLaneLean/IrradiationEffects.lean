import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure IrradiationEffectsPackage where
  displacementDamage : Prop
  transmutationProducts : Prop
  voidSwelling : Prop
  irradiationCreep : Prop
  phaseInstability : Prop

def IrradiationEffectsClosed (I : IrradiationEffectsPackage) : Prop :=
  I.displacementDamage ∧ I.transmutationProducts ∧ I.voidSwelling ∧ I.irradiationCreep ∧ I.phaseInstability

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse