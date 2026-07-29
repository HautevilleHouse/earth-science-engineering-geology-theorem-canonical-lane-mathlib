import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEngineeringGeologyTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse