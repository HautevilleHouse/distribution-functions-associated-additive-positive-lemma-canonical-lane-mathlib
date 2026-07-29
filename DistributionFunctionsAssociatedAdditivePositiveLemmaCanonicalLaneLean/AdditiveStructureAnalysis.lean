import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.DistributionFunctionDefinitions

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure AdditiveStructurePackage (D : DistributionFunctionPackage) where
  additionRule : Prop
  associativity : Prop
  commutativity : Prop
  identityElement : Prop
  additiveInverses : Prop
  additionRuleClosed : additionRule
  associativityClosed : associativity
  commutativityClosed : commutativity
  identityElementClosed : identityElement
  additiveInversesClosed : additiveInverses

structure AdditiveStructureEvidence {D : DistributionFunctionPackage}
    (A : AdditiveStructurePackage D) where
  additionRuleClosed : A.additionRule
  associativityClosed : A.associativity
  commutativityClosed : A.commutativity
  identityElementClosed : A.identityElement
  additiveInversesClosed : A.additiveInverses

def AdditiveStructureClosed {D : DistributionFunctionPackage}
    (A : AdditiveStructurePackage D) : Prop :=
  A.additionRule ∧ A.associativity ∧ A.commutativity ∧ A.identityElement ∧ A.additiveInverses

theorem additive_structure_closed_from_evidence
    {D : DistributionFunctionPackage} (A : AdditiveStructurePackage D)
    (Ev : AdditiveStructureEvidence A) : AdditiveStructureClosed A := by
  exact And.intro Ev.additionRuleClosed
    (And.intro Ev.associativityClosed
      (And.intro Ev.commutativityClosed
        (And.intro Ev.identityElementClosed Ev.additiveInversesClosed)))

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse