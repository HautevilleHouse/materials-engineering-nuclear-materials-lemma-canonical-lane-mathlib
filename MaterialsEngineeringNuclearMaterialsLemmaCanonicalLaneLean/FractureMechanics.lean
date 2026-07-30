import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackPropagation : Type v
  fractureToughness : Prop
  linearElasticFracture : Prop
  elasticPlasticFracture : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  linearElasticFractureClosed : F.linearElasticFracture
  elasticPlasticFractureClosed : F.elasticPlasticFracture

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.linearElasticFracture ∧ F.elasticPlasticFracture

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed (And.intro E.linearElasticFractureClosed E.elasticPlasticFractureClosed)

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse