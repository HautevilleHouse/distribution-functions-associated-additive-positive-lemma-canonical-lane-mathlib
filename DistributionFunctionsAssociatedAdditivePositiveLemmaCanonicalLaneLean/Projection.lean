import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DFAAPEndgameState where
  object : DFAAPAdmittedObject

def dfaapProjection : Projection DFAAPEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dfaap_projection_idempotent (x : DFAAPEndgameState) :
    dfaapProjection.toFun (dfaapProjection.toFun x) = dfaapProjection.toFun x := by
  exact dfaapProjection.idempotent x

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse