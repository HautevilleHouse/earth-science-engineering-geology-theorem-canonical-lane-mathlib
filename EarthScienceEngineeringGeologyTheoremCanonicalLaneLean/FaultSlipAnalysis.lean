import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure FaultPlane where
  strike : ℝ
  dip : ℝ
  slipVector : ℝ × ℝ × ℝ

definitionStrikeSlipFault : FaultPlane :=
  { strike := 90.0, dip := 90.0, slipVector := (1.0, 0.0, 0.0) }

structure SlipRate where
  faultName : String
  rate : ℝ
  direction : String

definitionSanAndreasSlipRate : SlipRate :=
  { faultName := "San Andreas", rate := 35.0, direction := "right-lateral" }

theorem fault_slip_admissible (f : FaultPlane) : f.strike > 0 := by
  exact by
    have h : f.strike = 90.0 := rfl
    linarith

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse