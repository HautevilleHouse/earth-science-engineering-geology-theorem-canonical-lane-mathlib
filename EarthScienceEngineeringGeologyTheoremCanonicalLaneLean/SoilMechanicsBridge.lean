import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure SoilLayer where
  thickness : ℝ
  cohesion : ℝ
  frictionAngle : ℝ
  unitWeight : ℝ

definitionClayLayer : SoilLayer :=
  { thickness := 5.0, cohesion := 25.0, frictionAngle := 0.0, unitWeight := 18.0 }

structure BearingCapacity where
  factorSafety : ℝ
  ultimateCapacity : ℝ
  allowableCapacity : ℝ

definitionShallowFoundationCapacity : BearingCapacity :=
  { factorSafety := 3.0, ultimateCapacity := 500.0, allowableCapacity := 166.67 }

theorem soil_bearing_admissible (s : SoilLayer) (b : BearingCapacity) : b.allowableCapacity < b.ultimateCapacity := by
  have h : b.ultimateCapacity / b.factorSafety = b.allowableCapacity := by
    calc
      b.ultimateCapacity / b.factorSafety = 500.0 / 3.0 := rfl
      _ = 166.67 := by norm_num
      _ = b.allowableCapacity := rfl
  have hpos : b.ultimateCapacity > 0 := by norm_num
  have hfactor : b.factorSafety > 1 := by norm_num
  nlinarith

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse