import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure RockMechanicsPackage where
  rockStrengthCriteria : Prop
  deformationModulus : Prop
  jointProperties : Prop
  inSituStress : Prop
  failureEnvelope : Prop

structure RockMechanicsEvidence (P : RockMechanicsPackage) where
  rockStrengthCriteriaClosed : P.rockStrengthCriteria
  deformationModulusClosed : P.deformationModulus
  jointPropertiesClosed : P.jointProperties
  inSituStressClosed : P.inSituStress
  failureEnvelopeClosed : P.failureEnvelope

def RockMechanicsClosed (P : RockMechanicsPackage) : Prop :=
  P.rockStrengthCriteria ∧ P.deformationModulus ∧ P.jointProperties ∧ P.inSituStress ∧ P.failureEnvelope

theorem rock_mechanics_closed_from_evidence (P : RockMechanicsPackage) (E : RockMechanicsEvidence P) :
    RockMechanicsClosed P := by
  exact And.intro E.rockStrengthCriteriaClosed
    (And.intro E.deformationModulusClosed
      (And.intro E.jointPropertiesClosed
        (And.intro E.inSituStressClosed E.failureEnvelopeClosed)))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse