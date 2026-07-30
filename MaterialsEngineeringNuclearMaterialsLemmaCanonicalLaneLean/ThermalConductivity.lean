import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure ThermalConductivity (A : AdmissibleClass) where
  thermalDiffusivity : Type u
  heatCapacity : Type v
  phononScattering : Type w
  conductivityTensor : Prop

structure ThermalConductivityEvidence (A : AdmissibleClass) (T : ThermalConductivity A) where
  thermalDiffusivityDefined : Nonempty T.thermalDiffusivity
  heatCapacityDefined : Nonempty T.heatCapacity
  phononScatteringDefined : Nonempty T.phononScattering
  conductivityTensorClosed : T.conductivityTensor

def ThermalConductivityClosed (A : AdmissibleClass) (T : ThermalConductivity A) : Prop :=
  Nonempty T.thermalDiffusivity ∧ Nonempty T.heatCapacity ∧
  Nonempty T.phononScattering ∧ T.conductivityTensor

theorem thermal_conductivity_closed_from_evidence (A : AdmissibleClass) (T : ThermalConductivity A)
    (E : ThermalConductivityEvidence A T) : ThermalConductivityClosed A T :=
  And.intro E.thermalDiffusivityDefined (And.intro E.heatCapacityDefined
    (And.intro E.phononScatteringDefined E.conductivityTensorClosed))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse