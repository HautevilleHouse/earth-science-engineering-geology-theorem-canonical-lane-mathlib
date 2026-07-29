import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure SubsurfaceExplorationPackage where
  drillingLog : Type
  geophysicalSurvey : Prop
  sampleAnalysis : Prop
  stratigraphicModel : Prop
  groundTruthCalibration : Prop

structure SubsurfaceExplorationEvidence (S : SubsurfaceExplorationPackage) where
  geophysicalSurveyClosed : S.geophysicalSurvey
  sampleAnalysisClosed : S.sampleAnalysis
  stratigraphicModelClosed : S.stratigraphicModel
  groundTruthCalibrationClosed : S.groundTruthCalibration

def SubsurfaceExplorationClosed (S : SubsurfaceExplorationPackage) : Prop :=
  S.geophysicalSurvey ∧ S.sampleAnalysis ∧ S.stratigraphicModel ∧ S.groundTruthCalibration

theorem subsurface_exploration_closed_from_evidence (S : SubsurfaceExplorationPackage)
    (E : SubsurfaceExplorationEvidence S) : SubsurfaceExplorationClosed S := by
  exact And.intro E.geophysicalSurveyClosed
    (And.intro E.sampleAnalysisClosed
      (And.intro E.stratigraphicModelClosed E.groundTruthCalibrationClosed))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse