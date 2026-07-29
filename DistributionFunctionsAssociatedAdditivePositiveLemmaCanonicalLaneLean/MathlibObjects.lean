import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdditivePositiveSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : Carrier → ℝ
  distributionDefined : Carrier → ℝ
  additiveProperty : Prop

structure AdditivePositiveAdmittedObject where
  space : AdditivePositiveSpace
  additivePropertyClosed : space.additiveProperty
  distributionNonnegative : ∀ x, space.distributionDefined x ≥ 0
  conclusion : additivePropertyClosed ∧ (∀ x, distributionDefinedNonnegative x)

structure AdditivePositiveEndgameState where
  object : AdditivePositiveAdmittedObject

def AdditivePositiveWitnessClosed (O : AdditivePositiveAdmittedObject) : Prop :=
  O.additivePropertyClosed ∧ (∀ x, O.distributionDefinedNonnegative x)

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse
