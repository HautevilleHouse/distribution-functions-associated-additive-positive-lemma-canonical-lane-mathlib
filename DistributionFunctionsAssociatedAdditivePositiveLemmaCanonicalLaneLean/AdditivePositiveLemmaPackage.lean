import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.DistributionFunctions

/-!
# Additive Positive Lemma Package
-/

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure AdditivePositiveLemmaPackage where
  targetDistribution : Type u
  additiveStructure : Type v
  positiveQuantity : Prop
  subadditivity : Prop
  superadditivity : Prop
  limitBehavior : Prop

structure AdditivePositiveLemmaEvidence (P : AdditivePositiveLemmaPackage) where
  positiveQuantityClosed : P.positiveQuantity
  subadditivityClosed : P.subadditivity
  superadditivityClosed : P.superadditivity
  limitBehaviorClosed : P.limitBehavior

def AdditivePositiveLemmaClosed (P : AdditivePositiveLemmaPackage) : Prop :=
  P.positiveQuantity ∧ P.subadditivity ∧ P.superadditivity ∧ P.limitBehavior

theorem additive_positive_lemma_closed_from_evidence
    (P : AdditivePositiveLemmaPackage) (E : AdditivePositiveLemmaEvidence P) :
    AdditivePositiveLemmaClosed P := by
  exact And.intro E.positiveQuantityClosed
    (And.intro E.subadditivityClosed
      (And.intro E.superadditivityClosed E.limitBehaviorClosed))

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse