import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure GeothermalGradient where
  depth : ℝ
  temperature : ℝ
  gradient : ℝ

structure HeatFlow where
  thermalConductivity : ℝ
  heatFlowDensity : ℝ
  geothermalGradient : GeothermalGradient

definitionContinentalGradient : GeothermalGradient :=
  { depth := 1000.0, temperature := 50.0, gradient := 0.025 }

theorem heat_flow_admissible (h : HeatFlow) : h.heatFlowDensity = h.thermalConductivity * h.geothermalGradient.gradient := by
  have h_eq : h.heatFlowDensity = h.thermalConductivity * h.geothermalGradient.gradient := rfl
  exact h_eq

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse