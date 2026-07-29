import EarthScienceEngineeringGeologyTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

def ConstrainedGeologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geology_endgame (A : AdmissibleClass) :
    ConstrainedGeologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse