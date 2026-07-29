import DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean.DistributionIntegersAdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure ResidueClassStructure (R : Type u) [AddCommGroup R] where
  modulus : ℕ
  residueSet : Set R
  closedUnderAddition : ∀ a ∈ residueSet, ∀ b ∈ residueSet, a + b ∈ residueSet
  containsZero : (0 : R) ∈ residueSet
  finiteIndex : Fintype (Quotient (AddSubgroup.zmultiples (modulus : R)).toSubgroup)

def ResidueClassClosed (S : ResidueClassStructure R) : Prop :=
  S.closedUnderAddition ∧ S.containsZero

theorem residue_class_closed_self (S : ResidueClassStructure R) :
    ResidueClassClosed S := by
  exact And.intro S.closedUnderAddition S.containsZero

structure ResidueClassEvidence (S : ResidueClassStructure R) where
  closedUnderAdditionClosed : S.closedUnderAddition
  containsZeroClosed : S.containsZero

theorem residue_class_closed_from_evidence (S : ResidueClassStructure R)
    (E : ResidueClassEvidence S) : ResidueClassClosed S := by
  exact And.intro E.closedUnderAdditionClosed E.containsZeroClosed

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse