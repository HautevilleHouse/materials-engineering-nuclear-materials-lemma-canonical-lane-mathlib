import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure DislocationDynamicsPackage where
  dislocationDensityField : Type
  burgersVectorDistribution : Prop
  glideClimbRatio : Prop
  irradiationDefectProduction : Prop
  sinkStrengthDistribution : Prop
  evolutionLaw : Prop

structure DislocationDynamicsEvidence (D : DislocationDynamicsPackage) where
  burgersVectorDistributionClosed : D.burgersVectorDistribution
  glideClimbRatioClosed : D.glideClimbRatio
  irradiationDefectProductionClosed : D.irradiationDefectProduction
  sinkStrengthDistributionClosed : D.sinkStrengthDistribution
  evolutionLawClosed : D.evolutionLaw

def DislocationDynamicsClosed (D : DislocationDynamicsPackage) : Prop :=
  D.burgersVectorDistribution ∧ D.glideClimbRatio ∧ D.irradiationDefectProduction ∧
  D.sinkStrengthDistribution ∧ D.evolutionLaw

theorem dislocation_dynamics_closed_from_evidence
    (D : DislocationDynamicsPackage) (E : DislocationDynamicsEvidence D) :
    DislocationDynamicsClosed D := by
  exact And.intro E.burgersVectorDistributionClosed
    (And.intro E.glideClimbRatioClosed
      (And.intro E.irradiationDefectProductionClosed
        (And.intro E.sinkStrengthDistributionClosed E.evolutionLawClosed)))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse