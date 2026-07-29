import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure FaultMechanicsPackage where
  frictionLaw : Type
  slipWeakening : Prop
  nucleationZone : Prop
  dynamicRupture : Prop
  energyBudget : Prop

structure FaultMechanicsEvidence (F : FaultMechanicsPackage) where
  slipWeakeningClosed : F.slipWeakening
  nucleationZoneClosed : F.nucleationZone
  dynamicRuptureClosed : F.dynamicRupture
  energyBudgetClosed : F.energyBudget

def FaultMechanicsClosed (F : FaultMechanicsPackage) : Prop :=
  F.slipWeakening ∧ F.nucleationZone ∧ F.dynamicRupture ∧ F.energyBudget

theorem fault_mechanics_closed_from_evidence (F : FaultMechanicsPackage)
    (E : FaultMechanicsEvidence F) : FaultMechanicsClosed F := by
  exact And.intro E.slipWeakeningClosed
    (And.intro E.nucleationZoneClosed
      (And.intro E.dynamicRuptureClosed E.energyBudgetClosed))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse