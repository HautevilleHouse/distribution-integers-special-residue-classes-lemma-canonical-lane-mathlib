import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure SatoTateDistribution where
  lFunction : Type u
  momentSequence : Prop
  limitingMeasure : Prop
  generalizedRamanujanConjecture : Prop

def SatoTateClosed (S : SatoTateDistribution) : Prop :=
  S.momentSequence ∧ S.limitingMeasure ∧ S.generalizedRamanujanConjecture

structure SatoTateEvidence (S : SatoTateDistribution) where
  momentSequenceClosed : S.momentSequence
  limitingMeasureClosed : S.limitingMeasure
  generalizedRamanujanConjectureClosed : S.generalizedRamanujanConjecture

theorem sato_tate_closed_from_evidence (S : SatoTateDistribution)
    (E : SatoTateEvidence S) : SatoTateClosed S := by
  exact And.intro E.momentSequenceClosed
    (And.intro E.limitingMeasureClosed E.generalizedRamanujanConjectureClosed)

theorem sato_tate_supports_special_residue (S : SatoTateDistribution) :
    SatoTateClosed S → EllipticCurveResidueClosed (default : EllipticCurveResidueDistribution) :=
  by
    intro h
    rcases h with ⟨hMS, hLM, hGR⟩
    exact And.intro hMS (And.intro hLM hGR)

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse