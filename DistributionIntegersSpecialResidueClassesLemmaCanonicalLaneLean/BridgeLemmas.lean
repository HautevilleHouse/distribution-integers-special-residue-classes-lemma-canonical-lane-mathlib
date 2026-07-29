import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemma

def bridgeClosed (A : AdmissibleClass) : Prop :=
  specialResidueClassClosed (A.object : SpecialResidueClass)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionIntegersSpecialResidueClassesLemma
end HautevilleHouse