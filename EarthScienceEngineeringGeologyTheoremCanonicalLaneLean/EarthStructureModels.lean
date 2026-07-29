import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure EarthLayer where
  name : String
  depthRange : ℝ × ℝ
  composition : String
  physicalState : String

definitionThreeLayerModel : EarthLayer × EarthLayer × EarthLayer :=
  ({ name := "crust", depthRange := (0.0, 35.0), composition := "silicate rocks", physicalState := "solid" },
   { name := "mantle", depthRange := (35.0, 2890.0), composition := "silicate minerals", physicalState := "solid with partial melt" },
   { name := "core", depthRange := (2890.0, 6371.0), composition := "iron-nickel alloy", physicalState := "liquid outer, solid inner" })

structure SeismicDiscontinuity where
  depth : ℝ
  velocityChange : ℝ
  boundaryName : String

definitionMohoDiscontinuity : SeismicDiscontinuity :=
  { depth := 35.0, velocityChange := 1.5, boundaryName := "Moho" }

definitionCoreMantleBoundary : SeismicDiscontinuity :=
  { depth := 2890.0, velocityChange := 5.0, boundaryName := "CMB" }

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse