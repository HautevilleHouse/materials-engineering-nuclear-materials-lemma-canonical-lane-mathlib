import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  phases : Type u
  phaseBoundaries : Type v
  thermodynamicVariables : Type w
  phaseEquilibria : Prop
  phaseTransitions : Prop
  gibbsPhaseRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseEquilibriaClosed : P.phaseEquilibria
  phaseTransitionsClosed : P.phaseTransitions
  gibbsPhaseRuleClosed : P.gibbsPhaseRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseEquilibria ∧ P.phaseTransitions ∧ P.gibbsPhaseRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseEquilibriaClosed (And.intro E.phaseTransitionsClosed E.gibbsPhaseRuleClosed)

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse