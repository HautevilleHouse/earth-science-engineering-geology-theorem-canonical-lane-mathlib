import PoincareConjectureCanonicalLaneLean.CanonicalNeighborhoods

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure ExcavationGeometrySurgeryPackage {E : EngineeringGeologyAdmissibleClass}
    {G : GroundStratigraphy E} {T : TunnelBoringMachine G}
    {R : RockMassRating T} {N : DiscontinuitySet R}
    {Q : QSystemRating N} (C : ExcavationCanonicalNeighborhoods Q) where
  standUpTimeDiscrete : Prop
  supportCategoryAdmissible : Prop
  postSettlementDomeControlled : Prop
  deformationModulusSurvivesSurgery : Prop
  excavationGeometryAccounted : Prop

structure ExcavationGeometrySurgeryEvidence {G : GroundStratigraphy}
    {T : TunnelBoringMachine G} {R : RockMassRating T}
    {N : DiscontinuitySet R} {Q : QSystemRating N}
    {C : ExcavationCanonicalNeighborhoods Q}
    (U : ExcavationGeometrySurgeryPackage C) where
  standUpTimeDiscreteClosed : U.standUpTimeDiscrete
  supportCategoryAdmissibleClosed : U.supportCategoryAdmissible
  postSettlementDomeControlledClosed : U.postSettlementDomeControlled
  deformationModulusSurvivesSurgeryClosed : U.deformationModulusSurvivesSurgery
  excavationGeometryAccountedClosed : U.excavationGeometryAccounted

def ExcavationGeometrySurgeryClosed {G : GroundStratigraphy}
    {T : TunnelBoringMachine G} {R : RockMassRating T}
    {N : DiscontinuitySet R} {Q : QSystemRating N}
    {C : ExcavationCanonicalNeighborhoods Q}
    (U : ExcavationGeometrySurgeryPackage C) : Prop :=
  U.standUpTimeDiscrete ∧ U.supportCategoryAdmissible ∧
  U.postSettlementDomeControlled ∧ U.deformationModulusSurvivesSurgery ∧
  U.excavationGeometryAccounted

theorem excavation_geometry_surgery_closed_from_evidence
    {G : GroundStratigraphy} {T : TunnelBoringMachine G} {R : RockMassRating T}
    {N : DiscontinuitySet R} {Q : QSystemRating N}
    {C : ExcavationCanonicalNeighborhoods Q} (U : ExcavationGeometrySurgeryPackage C)
    (E : ExcavationGeometrySurgeryEvidence U) : ExcavationGeometrySurgeryClosed U := by
  exact And.intro E.standUpTimeDiscreteClosed
    (And.intro E.supportCategoryAdmissibleClosed
      (And.intro E.postSettlementDomeControlledClosed
        (And.intro E.deformationModulusSurvivesSurgeryClosed E.excavationGeometryAccountedClosed)))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse