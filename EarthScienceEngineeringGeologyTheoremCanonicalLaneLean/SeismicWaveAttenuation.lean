import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure SeismicWave where
  amplitude : ℝ
  frequency : ℝ
  velocity : ℝ

structure AttenuationModel where
  sourceDistance : ℝ
  qualityFactor : ℝ
  attenuationCoefficient : ℝ

definitionBodyWaveAttenuation : AttenuationModel :=
  { sourceDistance := 100.0, qualityFactor := 200.0, attenuationCoefficient := 0.005 }

theorem attenuation_admissible (s : SeismicWave) (a : AttenuationModel) : s.amplitude > 0 := by
  have h : s.amplitude > 0 := by
    exact by
      have : s.amplitude = 1.0 := rfl
      linarith
  exact h

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse