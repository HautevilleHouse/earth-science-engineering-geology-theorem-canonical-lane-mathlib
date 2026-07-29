import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure SeismicHazardPackage where
  faultSourceModel : Prop
  groundMotionPrediction : Prop
  siteResponse : Prop
  hazardCurve : Prop
  designSpectrum : Prop

structure SeismicHazardEvidence (P : SeismicHazardPackage) where
  faultSourceModelClosed : P.faultSourceModel
  groundMotionPredictionClosed : P.groundMotionPrediction
  siteResponseClosed : P.siteResponse
  hazardCurveClosed : P.hazardCurve
  designSpectrumClosed : P.designSpectrum

def SeismicHazardClosed (P : SeismicHazardPackage) : Prop :=
  P.faultSourceModel ∧ P.groundMotionPrediction ∧ P.siteResponse ∧ P.hazardCurve ∧ P.designSpectrum

theorem seismic_hazard_closed_from_evidence (P : SeismicHazardPackage) (E : SeismicHazardEvidence P) :
    SeismicHazardClosed P := by
  exact And.intro E.faultSourceModelClosed
    (And.intro E.groundMotionPredictionClosed
      (And.intro E.siteResponseClosed
        (And.intro E.hazardCurveClosed E.designSpectrumClosed)))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse