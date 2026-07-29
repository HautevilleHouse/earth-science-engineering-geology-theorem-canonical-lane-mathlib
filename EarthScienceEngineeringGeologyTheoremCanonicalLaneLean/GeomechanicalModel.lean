import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEngineeringGeologyTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Geomechanical Model Package
-/

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure GeomechanicalModel where
  stressTensor : Prop
  strainTensor : Prop
  constitutiveLaw : Prop
  failureCriterion : Prop
  porePressure : Prop

def GeomechanicalModelClosed (M : GeomechanicalModel) : Prop :=
  M.stressTensor ∧ M.strainTensor ∧ M.constitutiveLaw ∧ M.failureCriterion ∧ M.porePressure

theorem geomechanical_model_closed_from_fields (M : GeomechanicalModel)
    (h1 : M.stressTensor) (h2 : M.strainTensor) (h3 : M.constitutiveLaw)
    (h4 : M.failureCriterion) (h5 : M.porePressure) :
    GeomechanicalModelClosed M := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse