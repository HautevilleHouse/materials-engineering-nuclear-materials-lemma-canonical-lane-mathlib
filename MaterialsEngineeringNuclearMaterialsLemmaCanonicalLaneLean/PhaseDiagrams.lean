import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean

structure PhaseDiagram (A : AdmissibleClass) where
  phases : Type u
  transitions : Type v
  thermodynamicVariables : Type w
  phaseBoundaries : Prop

structure PhaseDiagramEvidence (A : AdmissibleClass) (P : PhaseDiagram A) where
  phasesNonempty : Nonempty P.phases
  transitionsNonempty : Nonempty P.transitions
  thermodynamicVariablesNonempty : Nonempty P.thermodynamicVariables
  phaseBoundariesClosed : P.phaseBoundaries

def PhaseDiagramClosed (A : AdmissibleClass) (P : PhaseDiagram A) : Prop :=
  Nonempty P.phases ∧ Nonempty P.transitions ∧
  Nonempty P.thermodynamicVariables ∧ P.phaseBoundaries

theorem phase_diagram_closed_from_evidence (A : AdmissibleClass) (P : PhaseDiagram A)
    (E : PhaseDiagramEvidence A P) : PhaseDiagramClosed A P :=
  And.intro E.phasesNonempty (And.intro E.transitionsNonempty
    (And.intro E.thermodynamicVariablesNonempty E.phaseBoundariesClosed))

end MaterialsEngineeringNuclearMaterialsLemmaCanonicalLaneLean
end HautevilleHouse