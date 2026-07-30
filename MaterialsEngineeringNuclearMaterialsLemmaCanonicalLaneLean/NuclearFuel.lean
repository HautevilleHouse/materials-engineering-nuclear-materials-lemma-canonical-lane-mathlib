import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure NuclearFuelPackage where
  fuelPelletMicrostructure : Prop
  fissionProductRetention : Prop
  thermalConductivityDegradation : Prop
  fuelCladdingInteraction : Prop
  burnupEffects : Prop

def NuclearFuelClosed (F : NuclearFuelPackage) : Prop :=
  F.fuelPelletMicrostructure ∧ F.fissionProductRetention ∧ F.thermalConductivityDegradation ∧ F.fuelCladdingInteraction ∧ F.burnupEffects

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse