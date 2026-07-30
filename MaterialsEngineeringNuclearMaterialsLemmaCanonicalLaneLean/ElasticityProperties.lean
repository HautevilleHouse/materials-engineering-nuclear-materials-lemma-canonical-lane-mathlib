import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure ElasticTensor where
  elasticConstants : Type u
  symmetryReduction : Prop
  mechanicalStabilityCriteria : Prop
  anisotropicFactor : Prop

structure ElasticityPackage where
  tensor : ElasticTensor
  youngModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  thermalExpansionCoefficient : Prop
  elasticityClosed : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticConstantsDefined : E.tensor.elasticConstants ≠ {} 
  symmetryReductionClosed : E.tensor.symmetryReduction
  mechanicalStabilityCriteriaClosed : E.tensor.mechanicalStabilityCriteria
  anisotropicFactorClosed : E.tensor.anisotropicFactor
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  thermalExpansionCoefficientClosed : E.thermalExpansionCoefficient
  elasticityClosedTerm : E.elasticityClosed

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.tensor.symmetryReduction ∧ E.tensor.mechanicalStabilityCriteria ∧
  E.tensor.anisotropicFactor ∧ E.youngModulus ∧ E.poissonRatio ∧
  E.shearModulus ∧ E.thermalExpansionCoefficient ∧ E.elasticityClosed

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.symmetryReductionClosed
    (And.intro Ev.mechanicalStabilityCriteriaClosed
      (And.intro Ev.anisotropicFactorClosed
        (And.intro Ev.youngModulusClosed
          (And.intro Ev.poissonRatioClosed
            (And.intro Ev.shearModulusClosed
              (And.intro Ev.thermalExpansionCoefficientClosed Ev.elasticityClosedTerm))))))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse