import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.DistributionFunctionPackage
import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.BridgeLemmas

/-!
# Additive Positive Lemma Package
-/

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure AdditivePositiveLemmaPackage (D : DistributionFunctionPackage) where
  additivePositiveConditionClosed : additivePositiveCondition D
  lemmaStatement : Prop
  lemmaProof : lemmaStatement

def AdditivePositiveLemmaClosed (D : DistributionFunctionPackage) (L : AdditivePositiveLemmaPackage D) : Prop :=
  L.additivePositiveConditionClosed ∧ L.lemmaStatement

theorem additive_positive_lemma_closed_from_evidence
  (D : DistributionFunctionPackage) (L : AdditivePositiveLemmaPackage D) :
  AdditivePositiveLemmaClosed D L := by
  exact And.intro L.additivePositiveConditionClosed L.lemmaProof

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse
