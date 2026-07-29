import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure ExponentialSumEstimates where
  modulus : ℕ
  characterSum : ℂ
  weylBound : Prop
  derivativeEstimate : Prop
  stationaryPhaseBound : Prop
  sumClosed : Prop := by
    exact weylBound ∧ derivativeEstimate ∧ stationaryPhaseBound

structure ExponentialSumEvidence (E : ExponentialSumEstimates) where
  weylBoundClosed : E.weylBound
  derivativeEstimateClosed : E.derivativeEstimate
  stationaryPhaseBoundClosed : E.stationaryPhaseBound

def ExponentialSumClosed (E : ExponentialSumEstimates) : Prop :=
  E.weylBound ∧ E.derivativeEstimate ∧ E.stationaryPhaseBound

theorem exponential_sum_closed_from_evidence (E : ExponentialSumEstimates) (Ev : ExponentialSumEvidence E) :
    ExponentialSumClosed E := by
  exact And.intro Ev.weylBoundClosed (And.intro Ev.derivativeEstimateClosed Ev.stationaryPhaseBoundClosed)

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse