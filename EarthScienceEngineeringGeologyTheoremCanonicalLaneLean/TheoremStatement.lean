import EarthScienceEngineeringGeologyTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure EarthScienceEngineeringGeologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EarthScienceEngineeringGeologyAdmittedObject where
  space : EarthScienceEngineeringGeologySpace
  geologicalModel : Prop
  engineeringConstraints : Prop
  stabilityCondition : Prop
  hazardAssessment : Prop
  conclusion : stabilityCondition

def EarthScienceEngineeringGeologyWitnessClosed (O : EarthScienceEngineeringGeologyAdmittedObject) : Prop :=
  O.stabilityCondition

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse
