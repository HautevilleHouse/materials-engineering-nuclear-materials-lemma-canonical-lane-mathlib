import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessMatrix : Type u
  complianceMatrix : Type v
  youngModulus : ℝ
  poissonRatio : ℝ
  bulkModulus : ℝ
  shearModulus : ℝ
  anisotropicFactors : List ℝ
  elasticPropertiesDefined : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  elasticPropertiesDefinedClosed : E.elasticPropertiesDefined
  moduliPositive : E.youngModulus > 0 ∧ E.bulkModulus > 0 ∧ E.shearModulus > 0
  poissonRatioBounds : -1 < E.poissonRatio ∧ E.poissonRatio < 0.5

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.elasticPropertiesDefined ∧ E.youngModulus > 0 ∧ E.bulkModulus > 0 ∧ E.shearModulus > 0 ∧
  -1 < E.poissonRatio ∧ E.poissonRatio < 0.5

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  rcases Ev with ⟨closed, ⟨ymod, bmod, smod⟩, ⟨low, high⟩⟩
  exact And.intro closed (And.intro ymod (And.intro bmod (And.intro smod (And.intro low high))))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
