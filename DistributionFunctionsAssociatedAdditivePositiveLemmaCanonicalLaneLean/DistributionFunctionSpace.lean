import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure DistributionFunctionSpace where
  space : Type u
  positiveMeasureSet : Set space
  positiveMeasureNonempty : Set.Nonempty positiveMeasureSet
  additiveSemigroup : AddSemigroup space
  distributionFunction : space → ℝ
  positiveLemmaHypothesis : ∀ x ∈ positiveMeasureSet, distributionFunction x > 0

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse