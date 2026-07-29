import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure SlopeStabilityPackage where
  failureSurface : Type
  shearStrength : Prop
  porePressure : Prop
  factorOfSafety : Prop
  remediationDesign : Prop

structure SlopeStabilityEvidence (S : SlopeStabilityPackage) where
  shearStrengthClosed : S.shearStrength
  porePressureClosed : S.porePressure
  factorOfSafetyClosed : S.factorOfSafety
  remediationDesignClosed : S.remediationDesign

def SlopeStabilityClosed (S : SlopeStabilityPackage) : Prop :=
  S.shearStrength ∧ S.porePressure ∧ S.factorOfSafety ∧ S.remediationDesign

theorem slope_stability_closed_from_evidence (S : SlopeStabilityPackage)
    (E : SlopeStabilityEvidence S) : SlopeStabilityClosed S := by
  exact And.intro E.shearStrengthClosed
    (And.intro E.porePressureClosed
      (And.intro E.factorOfSafetyClosed E.remediationDesignClosed))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse