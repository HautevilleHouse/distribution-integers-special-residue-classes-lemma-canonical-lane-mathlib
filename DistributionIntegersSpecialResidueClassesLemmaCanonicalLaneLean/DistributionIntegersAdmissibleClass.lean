import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean

structure DistributionAdmittedObject where
  residueClass : Type u
  modulus : ℕ
  residueSet : Set residueClass
  distributionProperty : Prop
  conclusion : distributionProperty

def DistributionWitnessClosed (O : DistributionAdmittedObject) : Prop :=
  O.conclusion

end DistributionIntegersSpecialResidueClassesLemmaCanonicalLaneLean
end HautevilleHouse