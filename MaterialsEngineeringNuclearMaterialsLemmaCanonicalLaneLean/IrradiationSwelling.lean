import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure IrradiationSwellingPackage where
  voidNucleationRate : Prop
  voidGrowthRate : Prop
  gasProductionRate : Prop
  swellingStrainTensor : Type
  saturationCriterion : Prop

structure IrradiationSwellingEvidence (S : IrradiationSwellingPackage) where
  voidNucleationRateClosed : S.voidNucleationRate
  voidGrowthRateClosed : S.voidGrowthRate
  gasProductionRateClosed : S.gasProductionRate
  saturationCriterionClosed : S.saturationCriterion

def IrradiationSwellingClosed (S : IrradiationSwellingPackage) : Prop :=
  S.voidNucleationRate ∧ S.voidGrowthRate ∧ S.gasProductionRate ∧ S.saturationCriterion

theorem irradiation_swelling_closed_from_evidence
    (S : IrradiationSwellingPackage) (E : IrradiationSwellingEvidence S) :
    IrradiationSwellingClosed S := by
  exact And.intro E.voidNucleationRateClosed
    (And.intro E.voidGrowthRateClosed
      (And.intro E.gasProductionRateClosed E.saturationCriterionClosed))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse