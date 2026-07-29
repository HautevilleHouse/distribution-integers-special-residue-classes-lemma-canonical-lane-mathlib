import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure LargeSievePackage where
  modulusSet : Finset ℕ
  sieveDensityEstimate : Prop
  orthogonalityEstimate : Prop
  meanValueBound : Prop
  sieveClosed : Prop := by
    exact sieveDensityEstimate ∧ orthogonalityEstimate ∧ meanValueBound

structure LargeSieveEvidence (L : LargeSievePackage) where
  sieveDensityEstimateClosed : L.sieveDensityEstimate
  orthogonalityEstimateClosed : L.orthogonalityEstimate
  meanValueBoundClosed : L.meanValueBound

def LargeSieveClosed (L : LargeSievePackage) : Prop :=
  L.sieveDensityEstimate ∧ L.orthogonalityEstimate ∧ L.meanValueBound

theorem large_sieve_closed_from_evidence (L : LargeSievePackage) (E : LargeSieveEvidence L) :
    LargeSieveClosed L := by
  exact And.intro E.sieveDensityEstimateClosed (And.intro E.orthogonalityEstimateClosed E.meanValueBoundClosed)

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse