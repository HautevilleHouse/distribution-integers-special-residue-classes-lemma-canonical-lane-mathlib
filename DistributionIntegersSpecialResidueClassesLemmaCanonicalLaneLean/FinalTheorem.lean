import canonicalLaneMathlib.AdmissibleClass
import DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean.BridgeLemmas
import DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

def ConstrainedSpecialResidueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_special_residue_endgame (A : AdmissibleClass) :
    ConstrainedSpecialResidueClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse