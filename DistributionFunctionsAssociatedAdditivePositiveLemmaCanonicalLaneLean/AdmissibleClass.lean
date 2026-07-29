import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdditivePositiveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdditivePositiveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse
