import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure RadiationDamage where
  displacementPerAtom : Type u
  cascadeSimulation : Type v
  defectEvolution : Prop
  voidSwelling : Prop
  irradiationCreep : Prop

structure DegradationPackage where
  damage : RadiationDamage
  embrittlementModel : Prop
  corrosionResistance : Prop
  thermalAnnealing : Prop
  degradationClosed : Prop

structure DegradationEvidence (D : DegradationPackage) where
  displacementPerAtomClosed : D.damage.displacementPerAtom ≠ {}
  cascadeSimulationClosed : D.damage.cascadeSimulation ≠ {}
  defectEvolutionClosed : D.damage.defectEvolution
  voidSwellingClosed : D.damage.voidSwelling
  irradiationCreepClosed : D.damage.irradiationCreep
  embrittlementModelClosed : D.embrittlementModel
  corrosionResistanceClosed : D.corrosionResistance
  thermalAnnealingClosed : D.thermalAnnealing
  degradationClosedTerm : D.degradationClosed

def DegradationClosed (D : DegradationPackage) : Prop :=
  D.damage.defectEvolution ∧ D.damage.voidSwelling ∧ D.damage.irradiationCreep ∧
  D.embrittlementModel ∧ D.corrosionResistance ∧ D.thermalAnnealing ∧ D.degradationClosed

theorem degradation_closed_from_evidence (D : DegradationPackage)
    (Ev : DegradationEvidence D) : DegradationClosed D := by
  exact And.intro Ev.defectEvolutionClosed
    (And.intro Ev.voidSwellingClosed
      (And.intro Ev.irradiationCreepClosed
        (And.intro Ev.embrittlementModelClosed
          (And.intro Ev.corrosionResistanceClosed
            (And.intro Ev.thermalAnnealingClosed Ev.degradationClosedTerm)))))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse