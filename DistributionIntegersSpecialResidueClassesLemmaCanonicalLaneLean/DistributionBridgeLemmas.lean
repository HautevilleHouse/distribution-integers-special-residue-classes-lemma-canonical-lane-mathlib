import DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean.DistributionIntegersAdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DistributionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse