import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure CoveringSystem := {
  moduli : List ℕ
  coveringProperty : Prop
}

structure CoveringEvidence (C : CoveringSystem) := {
  coveringPropertyClosed : C.coveringProperty
}

def CoveringClosed (C : CoveringSystem) : Prop :=
  C.coveringProperty

theorem covering_closed (C : CoveringSystem) (E : CoveringEvidence C) : CoveringClosed C := by
  exact E.coveringPropertyClosed

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse
