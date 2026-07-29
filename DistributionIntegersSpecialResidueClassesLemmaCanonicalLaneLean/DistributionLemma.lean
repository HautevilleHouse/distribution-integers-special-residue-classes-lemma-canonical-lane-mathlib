import DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean.ResidueClassStructure

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure DistributionLemmaPackage (S : ResidueClassStructure R) where
  densityEstimate : Prop
  equidistributionProperty : Prop
  errorTermBound : Prop

def DistributionLemmaClosed (P : DistributionLemmaPackage S) : Prop :=
  P.densityEstimate ∧ P.equidistributionProperty ∧ P.errorTermBound

structure DistributionLemmaEvidence (P : DistributionLemmaPackage S) where
  densityEstimateClosed : P.densityEstimate
  equidistributionPropertyClosed : P.equidistributionProperty
  errorTermBoundClosed : P.errorTermBound

theorem distribution_lemma_closed_from_evidence (P : DistributionLemmaPackage S)
    (E : DistributionLemmaEvidence P) : DistributionLemmaClosed P := by
  exact And.intro E.densityEstimateClosed
    (And.intro E.equidistributionPropertyClosed E.errorTermBoundClosed)

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse