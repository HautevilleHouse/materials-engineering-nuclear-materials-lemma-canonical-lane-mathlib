import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure ThermalMechanicalPropertiesPackage where
  thermalConductivity : Type u
  thermalExpansion : Type v
  specificHeat : Type w
  thermalCreep : Prop
  thermalFatigue : Prop
  thermalShock : Prop

structure ThermalMechanicalPropertiesEvidence (T : ThermalMechanicalPropertiesPackage) where
  thermalCreepClosed : T.thermalCreep
  thermalFatigueClosed : T.thermalFatigue
  thermalShockClosed : T.thermalShock

def ThermalMechanicalPropertiesClosed (T : ThermalMechanicalPropertiesPackage) : Prop :=
  T.thermalCreep ∧ T.thermalFatigue ∧ T.thermalShock

theorem thermal_mechanical_properties_closed_from_evidence (T : ThermalMechanicalPropertiesPackage) (E : ThermalMechanicalPropertiesEvidence T) :
    ThermalMechanicalPropertiesClosed T := by
  exact And.intro E.thermalCreepClosed (And.intro E.thermalFatigueClosed E.thermalShockClosed)

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse