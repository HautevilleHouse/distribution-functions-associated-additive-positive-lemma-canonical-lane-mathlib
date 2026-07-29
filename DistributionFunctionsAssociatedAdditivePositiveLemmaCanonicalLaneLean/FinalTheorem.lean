import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

def ConstrainedAdditivePositiveClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_additive_positive_endgame (A : AdmissibleClass) :
    ConstrainedAdditivePositiveClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse