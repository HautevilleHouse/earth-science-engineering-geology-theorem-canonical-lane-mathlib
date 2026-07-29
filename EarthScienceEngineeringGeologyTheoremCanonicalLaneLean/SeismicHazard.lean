import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure SeismicHazardPackage where
  groundMotionModel : Type
  attenuationRelation : Prop
  siteEffect : Prop
  recurrenceInterval : Prop
  fragilityCurve : Prop

structure SeismicHazardEvidence (S : SeismicHazardPackage) where
  attenuationRelationClosed : S.attenuationRelation
  siteEffectClosed : S.siteEffect
  recurrenceIntervalClosed : S.recurrenceInterval
  fragilityCurveClosed : S.fragilityCurve

def SeismicHazardClosed (S : SeismicHazardPackage) : Prop :=
  S.attenuationRelation ∧ S.siteEffect ∧ S.recurrenceInterval ∧ S.fragilityCurve

theorem seismic_hazard_closed_from_evidence (S : SeismicHazardPackage)
    (E : SeismicHazardEvidence S) : SeismicHazardClosed S := by
  exact And.intro E.attenuationRelationClosed
    (And.intro E.siteEffectClosed
      (And.intro E.recurrenceIntervalClosed E.fragilityCurveClosed))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse