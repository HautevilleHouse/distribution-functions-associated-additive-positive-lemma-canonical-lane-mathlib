import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure AdditivePositiveLemmaPackage where
  distributionFamily : Type u
  indexSet : Type v
  cumulativeFunction : distributionFamily → indexSet → ℝ
  positivityCondition : ∀ f : distributionFamily, ∀ i : indexSet, cumulativeFunction f i ≥ 0
  additivityCondition : ∀ f : distributionFamily, ∀ i j : indexSet, cumulativeFunction f (i + j) = cumulativeFunction f i + cumulativeFunction f j

structure AdditivePositiveLemmaEvidence (P : AdditivePositiveLemmaPackage) where
  positivityClosed : ∀ f : P.distributionFamily, ∀ i : P.indexSet, P.cumulativeFunction f i ≥ 0
  additivityClosed : ∀ f : P.distributionFamily, ∀ i j : P.indexSet, P.cumulativeFunction f (i + j) = P.cumulativeFunction f i + P.cumulativeFunction f j

def AdditivePositiveLemmaClosed (P : AdditivePositiveLemmaPackage) : Prop :=
  (∀ f : P.distributionFamily, ∀ i : P.indexSet, P.cumulativeFunction f i ≥ 0) ∧
  (∀ f : P.distributionFamily, ∀ i j : P.indexSet, P.cumulativeFunction f (i + j) = P.cumulativeFunction f i + P.cumulativeFunction f j)

theorem additive_positive_lemma_closed_from_evidence
    (P : AdditivePositiveLemmaPackage) (E : AdditivePositiveLemmaEvidence P) :
    AdditivePositiveLemmaClosed P := by
  exact And.intro E.positivityClosed E.additivityClosed

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse