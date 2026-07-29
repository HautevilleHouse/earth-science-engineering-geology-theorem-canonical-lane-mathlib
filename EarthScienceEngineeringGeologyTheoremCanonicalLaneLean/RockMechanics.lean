import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure RockMechanicsPackage where
  stressStrainLaw : Type
  failureCriterion : Prop
  deformationModulus : Prop
  creepBehavior : Prop
  anisotropyEffect : Prop

structure RockMechanicsEvidence (R : RockMechanicsPackage) where
  failureCriterionClosed : R.failureCriterion
  deformationModulusClosed : R.deformationModulus
  creepBehaviorClosed : R.creepBehavior
  anisotropyEffectClosed : R.anisotropyEffect

def RockMechanicsClosed (R : RockMechanicsPackage) : Prop :=
  R.failureCriterion ∧ R.deformationModulus ∧ R.creepBehavior ∧ R.anisotropyEffect

theorem rock_mechanics_closed_from_evidence (R : RockMechanicsPackage)
    (E : RockMechanicsEvidence R) : RockMechanicsClosed R := by
  exact And.intro E.failureCriterionClosed
    (And.intro E.deformationModulusClosed
      (And.intro E.creepBehaviorClosed E.anisotropyEffectClosed))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse