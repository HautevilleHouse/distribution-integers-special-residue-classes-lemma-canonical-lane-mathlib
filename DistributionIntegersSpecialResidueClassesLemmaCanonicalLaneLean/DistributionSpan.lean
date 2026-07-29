import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure DistributionSpan (A : AdmissibleClass) where
  residueClass : ℕ
  modulus : ℕ
  spanCount : ℕ
  containsAllIntegers : Prop
  spanCountPositive : spanCount > 0

structure DistributionSpanEvidence (A : AdmissibleClass) (S : DistributionSpan A) where
  containsAllIntegersClosed : S.containsAllIntegers

def DistributionSpanClosed (A : AdmissibleClass) (S : DistributionSpan A) : Prop :=
  S.containsAllIntegers

theorem distribution_span_closed_from_evidence (A : AdmissibleClass) (S : DistributionSpan A)
    (E : DistributionSpanEvidence A S) : DistributionSpanClosed A S := by
  exact E.containsAllIntegersClosed

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse