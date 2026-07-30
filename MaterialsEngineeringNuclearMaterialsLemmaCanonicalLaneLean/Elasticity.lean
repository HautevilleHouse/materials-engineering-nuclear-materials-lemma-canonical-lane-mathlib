import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressStrainTensor : Type u
  elasticConstants : Type v
  isotropicElasticity : Prop
  anisotropicElasticity : Prop
  hookesLaw : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  isotropicElasticityClosed : E.isotropicElasticity
  anisotropicElasticityClosed : E.anisotropicElasticity
  hookesLawClosed : E.hookesLaw

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.isotropicElasticity ∧ E.anisotropicElasticity ∧ E.hookesLaw

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.isotropicElasticityClosed (And.intro Ev.anisotropicElasticityClosed Ev.hookesLawClosed)

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse