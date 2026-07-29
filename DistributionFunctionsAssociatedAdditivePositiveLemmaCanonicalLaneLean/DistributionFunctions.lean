import canonicalLaneMathlib.AdmissibleClass

/-!
# Distribution Functions Package
-/

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure DistributionFunctionPackage where
  domain : Type u
  measure : Type v
  functionFamily : Type w
  distributionDefined : Prop
  monotonicity : Prop
  rightContinuity : Prop
  limitAtInfinity : Prop

structure DistributionFunctionEvidence (D : DistributionFunctionPackage) where
  distributionDefinedClosed : D.distributionDefined
  monotonicityClosed : D.monotonicity
  rightContinuityClosed : D.rightContinuity
  limitAtInfinityClosed : D.limitAtInfinity

def DistributionFunctionClosed (D : DistributionFunctionPackage) : Prop :=
  D.distributionDefined ∧ D.monotonicity ∧ D.rightContinuity ∧ D.limitAtInfinity

theorem distribution_function_closed_from_evidence
    (D : DistributionFunctionPackage) (E : DistributionFunctionEvidence D) :
    DistributionFunctionClosed D := by
  exact And.intro E.distributionDefinedClosed
    (And.intro E.monotonicityClosed
      (And.intro E.rightContinuityClosed E.limitAtInfinityClosed))

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse