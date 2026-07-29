import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Distribution Function Package
-/

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure DistributionFunctionPackage where
  domain : Type u
  measureSpace : Domain → Prop
  distributionFunction : Domain → ℝ
  cumulativeDistribution : Domain → ℝ
  densityFunction : Domain → ℝ
  additiveProperty : Prop

def additivePositiveCondition (D : DistributionFunctionPackage) : Prop :=
  D.additiveProperty ∧ (∀ x, D.distributionFunction x ≥ 0)

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse
