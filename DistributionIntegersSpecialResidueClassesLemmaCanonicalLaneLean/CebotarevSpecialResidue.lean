import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure CebotarevSpecialResiduePackage where
  numberField : Type u
  galoisGroup : Type v
  frobeniusElement : Type w
  chebotarevDensity : Prop
  residueClassAccounts : Prop
  errorTermBound : Prop

structure CebotarevResidueEvidence (C : CebotarevSpecialResiduePackage) where
  chebotarevDensityClosed : C.chebotarevDensity
  residueClassAccountsClosed : C.residueClassAccounts
  errorTermBoundClosed : C.errorTermBound

def CebotarevResidueClosed (C : CebotarevSpecialResiduePackage) : Prop :=
  C.chebotarevDensity ∧ C.residueClassAccounts ∧ C.errorTermBound

theorem cebotarev_residue_closed_from_evidence (C : CebotarevSpecialResiduePackage)
    (E : CebotarevResidueEvidence C) : CebotarevResidueClosed C := by
  exact And.intro E.chebotarevDensityClosed
    (And.intro E.residueClassAccountsClosed E.errorTermBoundClosed)

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse