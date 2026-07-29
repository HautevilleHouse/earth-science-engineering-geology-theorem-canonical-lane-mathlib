import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyTheoremCanonicalLaneLean

structure StressTensor where
  sigmaXX : ℝ
  sigmaYY : ℝ
  sigmaZZ : ℝ
  tauXY : ℝ
  tauXZ : ℝ
  tauYZ : ℝ

structure StrainTensor where
  epsilonXX : ℝ
  epsilonYY : ℝ
  epsilonZZ : ℝ
  gammaXY : ℝ
  gammaXZ : ℝ
  gammaYZ : ℝ

definitionHookesLaw (E : ℝ) (nu : ℝ) (stress : StressTensor) (strain : StrainTensor) : Prop :=
  strain.epsilonXX = (1/E) * (stress.sigmaXX - nu * (stress.sigmaYY + stress.sigmaZZ)) ∧
  strain.epsilonYY = (1/E) * (stress.sigmaYY - nu * (stress.sigmaXX + stress.sigmaZZ)) ∧
  strain.epsilonZZ = (1/E) * (stress.sigmaZZ - nu * (stress.sigmaXX + stress.sigmaYY))

theorem hookes_law_admissible (E : ℝ) (nu : ℝ) (s : StressTensor) (st : StrainTensor) (hE : E > 0) (hnu : nu > 0) (h : definitionHookesLaw E nu s st) : st.epsilonXX = (1/E) * (s.sigmaXX - nu * (s.sigmaYY + s.sigmaZZ)) := by
  exact h.1

end EarthScienceEngineeringGeologyTheoremCanonicalLaneLean
end HautevilleHouse