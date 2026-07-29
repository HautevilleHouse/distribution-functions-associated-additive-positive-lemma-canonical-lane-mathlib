import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.DistributionFunctionDefinitions

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure PositiveLemmaPackage {D : DistributionFunctionPackage} (E : DistributionFunctionEvidence D) where
  positivityCondition : Prop
  additiveClosure : Prop
  positivityConditionClosed : positivityCondition
  additiveClosureClosed : additiveClosure

structure PositiveLemmaEvidence {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D}
    (P : PositiveLemmaPackage E) where
  positivityConditionClosed : P.positivityCondition
  additiveClosureClosed : P.additiveClosure

def PositiveLemmaClosed {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D}
    (P : PositiveLemmaPackage E) : Prop :=
  P.positivityCondition ∧ P.additiveClosure

theorem positive_lemma_closed_from_evidence
    {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D}
    (P : PositiveLemmaPackage E) (Ev : PositiveLemmaEvidence P) :
    PositiveLemmaClosed P := by
  exact And.intro Ev.positivityConditionClosed Ev.additiveClosureClosed

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse