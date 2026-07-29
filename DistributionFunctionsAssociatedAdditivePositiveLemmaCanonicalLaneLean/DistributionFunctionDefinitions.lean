import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure DistributionFunctionPackage where
  underlyingSpace : Type u
  measureSpace : Type v
  sectionField : Type w
  additiveStructure : Prop
  positiveLatticeCondition : Prop
  measureConsistency : Prop

structure DistributionFunctionEvidence (D : DistributionFunctionPackage) where
  additiveStructureClosed : D.additiveStructure
  positiveLatticeConditionClosed : D.positiveLatticeCondition
  measureConsistencyClosed : D.measureConsistency

def DistributionFunctionClosed (D : DistributionFunctionPackage) : Prop :=
  D.additiveStructure ∧ D.positiveLatticeCondition ∧ D.measureConsistency

theorem distribution_function_closed_from_evidence
    (D : DistributionFunctionPackage) (E : DistributionFunctionEvidence D) :
    DistributionFunctionClosed D := by
  exact And.intro E.additiveStructureClosed
    (And.intro E.positiveLatticeConditionClosed E.measureConsistencyClosed)

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse