import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure SpecialResidueExtension (A : AdmissibleClass) where
  baseModulus : ℕ
  extensionFactor : ℕ
  extendedModulus : ℕ
  coversAllBases : Prop
  extensionFactorPositive : extensionFactor > 0

structure SpecialResidueExtensionEvidence (A : AdmissibleClass) (E : SpecialResidueExtension A) where
  coversAllBasesClosed : E.coversAllBases

def SpecialResidueExtensionClosed (A : AdmissibleClass) (E : SpecialResidueExtension A) : Prop :=
  E.coversAllBases

theorem special_residue_extension_closed_from_evidence (A : AdmissibleClass) (E : SpecialResidueExtension A)
    (Ev : SpecialResidueExtensionEvidence A E) : SpecialResidueExtensionClosed A E := by
  exact Ev.coversAllBasesClosed

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse