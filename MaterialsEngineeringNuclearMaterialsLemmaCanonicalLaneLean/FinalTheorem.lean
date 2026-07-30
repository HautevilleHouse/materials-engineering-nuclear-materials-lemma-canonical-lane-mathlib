import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

def ConstrainedMaterialsNuclearClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_materials_nuclear_endgame (A : AdmissibleClass) :
    ConstrainedMaterialsNuclearClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse