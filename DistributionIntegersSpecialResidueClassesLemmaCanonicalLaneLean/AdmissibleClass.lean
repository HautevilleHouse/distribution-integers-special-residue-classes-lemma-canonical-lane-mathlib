import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemma

structure SpecialResidueClass where
  modulus : ℕ
  residues : Finset ℤ
  validModulus : modulus > 1
  residuesContained : ∀ r ∈ residues, 0 ≤ r ∧ r < modulus

def specialResidueClassClosed (S : SpecialResidueClass) : Prop :=
  S.validModulus ∧ S.residuesContained

end DistributionIntegersSpecialResidueClassesLemma
end HautevilleHouse