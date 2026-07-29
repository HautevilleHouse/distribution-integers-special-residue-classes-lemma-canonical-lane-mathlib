import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure ConvergenceBound (A : AdmissibleClass) where
  initialSegment : ℕ
  bound : ℕ
  allIntegersCovered : Prop
  boundPositive : bound > 0

structure ConvergenceBoundEvidence (A : AdmissibleClass) (C : ConvergenceBound A) where
  allIntegersCoveredClosed : C.allIntegersCovered

def ConvergenceBoundClosed (A : AdmissibleClass) (C : ConvergenceBound A) : Prop :=
  C.allIntegersCovered

theorem convergence_bound_closed_from_evidence (A : AdmissibleClass) (C : ConvergenceBound A)
    (E : ConvergenceBoundEvidence A C) : ConvergenceBoundClosed A C := by
  exact E.allIntegersCoveredClosed

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse