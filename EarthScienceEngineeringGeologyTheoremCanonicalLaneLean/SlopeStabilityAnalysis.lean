import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure SlopeStabilityPackage where
  slopeGeometry : Prop
  shearStrengthParams : Prop
  groundwaterConditions : Prop
  factorOfSafety : Prop
  failureSurfaceType : Prop

structure SlopeStabilityEvidence (P : SlopeStabilityPackage) where
  slopeGeometryClosed : P.slopeGeometry
  shearStrengthParamsClosed : P.shearStrengthParams
  groundwaterConditionsClosed : P.groundwaterConditions
  factorOfSafetyClosed : P.factorOfSafety
  failureSurfaceTypeClosed : P.failureSurfaceType

def SlopeStabilityClosed (P : SlopeStabilityPackage) : Prop :=
  P.slopeGeometry ∧ P.shearStrengthParams ∧ P.groundwaterConditions ∧ P.factorOfSafety ∧ P.failureSurfaceType

theorem slope_stability_closed_from_evidence (P : SlopeStabilityPackage) (E : SlopeStabilityEvidence P) :
    SlopeStabilityClosed P := by
  exact And.intro E.slopeGeometryClosed
    (And.intro E.shearStrengthParamsClosed
      (And.intro E.groundwaterConditionsClosed
        (And.intro E.factorOfSafetyClosed E.failureSurfaceTypeClosed)))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse