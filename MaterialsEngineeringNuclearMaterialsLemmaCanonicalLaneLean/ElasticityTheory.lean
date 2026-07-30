import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage where
  linearElasticity : Prop
  anisotropicElasticity : Prop
  thermalExpansion : Prop
  radiationInducedSwelling : Prop
  elasticModuliDegradation : Prop

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.linearElasticity ∧ E.anisotropicElasticity ∧ E.thermalExpansion ∧ E.radiationInducedSwelling ∧ E.elasticModuliDegradation

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse