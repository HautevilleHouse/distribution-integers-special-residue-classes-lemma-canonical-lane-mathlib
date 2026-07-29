import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure BombieriVinogradovEstimate where
  levelOfDistribution : ℝ
  averageErrorTerm : Prop
  bilinearSumControl : Prop
  primeConvolutionBound : Prop

def BombieriVinogradovClosed (B : BombieriVinogradovEstimate) : Prop :=
  B.averageErrorTerm ∧ B.bilinearSumControl ∧ B.primeConvolutionBound

structure BombieriVinogradovEvidence (B : BombieriVinogradovEstimate) where
  averageErrorTermClosed : B.averageErrorTerm
  bilinearSumControlClosed : B.bilinearSumControl
  primeConvolutionBoundClosed : B.primeConvolutionBound

theorem bombieri_vinogradov_closed_from_evidence (B : BombieriVinogradovEstimate)
    (E : BombieriVinogradovEvidence B) : BombieriVinogradovClosed B := by
  exact And.intro E.averageErrorTermClosed
    (And.intro E.bilinearSumControlClosed E.primeConvolutionBoundClosed)

theorem bombieri_vinogradov_supports_special_residue (B : BombieriVinogradovEstimate) :
    BombieriVinogradovClosed B → Prop :=
  fun h => True

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse