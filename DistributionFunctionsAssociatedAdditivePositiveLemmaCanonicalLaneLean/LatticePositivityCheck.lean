import DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean.PositiveLemmaBridge

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean

structure LatticePositivityPackage {D : DistributionFunctionPackage}
    {E : DistributionFunctionEvidence D} {P : PositiveLemmaPackage E} where
  latticeStructure : Prop
  positivityPreserving : Prop
  latticeStructureClosed : latticeStructure
  positivityPreservingClosed : positivityPreserving

structure LatticePositivityEvidence {D : DistributionFunctionPackage}
    {E : DistributionFunctionEvidence D} {P : PositiveLemmaPackage E}
    (L : LatticePositivityPackage) where
  latticeStructureClosed : L.latticeStructure
  positivityPreservingClosed : L.positivityPreserving

def LatticePositivityClosed {D : DistributionFunctionPackage}
    {E : DistributionFunctionEvidence D} {P : PositiveLemmaPackage E}
    (L : LatticePositivityPackage) : Prop :=
  L.latticeStructure ∧ L.positivityPreserving

theorem lattice_positivity_closed_from_evidence
    {D : DistributionFunctionPackage} {E : DistributionFunctionEvidence D}
    {P : PositiveLemmaPackage E} (L : LatticePositivityPackage)
    (Ev : LatticePositivityEvidence L) : LatticePositivityClosed L := by
  exact And.intro Ev.latticeStructureClosed Ev.positivityPreservingClosed

end DistributionFunctionsAssociatedAdditivePositiveLemmaCanonicalLaneLean
end HautevilleHouse