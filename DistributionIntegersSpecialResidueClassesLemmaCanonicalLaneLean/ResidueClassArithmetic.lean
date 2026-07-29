import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesLemma

structure ResidueClassArithmetic (m : ℕ) where
  modulus : ℕ
  addition : ℤ → ℤ → ℤ
  multiplication : ℤ → ℤ → ℤ
  additionClosed : ∀ a b : ℤ, (a % modulus) + (b % modulus) = (a + b) % modulus
  multiplicationClosed : ∀ a b : ℤ, (a % modulus) * (b % modulus) = (a * b) % modulus

theorem residue_addition_closed (m : ℕ) (h : m > 1) (a b : ℤ) :
    (a % m) + (b % m) = (a + b) % m := by
  calc
    (a % m) + (b % m) = ((a + b) % m) := by
      have hpos : (0 : ℤ) ≤ a % m + b % m := by
        have ha : 0 ≤ a % m := Int.emod_nonneg a (by omega)
        have hb : 0 ≤ b % m := Int.emod_nonneg b (by omega)
        nlinarith
      have hlt : a % m + b % m < m := by
        have ha_lt : a % m < m := Int.emod_lt a (by omega)
        have hb_lt : b % m < m := Int.emod_lt b (by omega)
        nlinarith
      have hsum : (a + b) % m = (a % m + b % m) % m := by
        calc
          (a + b) % m = ((a % m) + (b % m)) % m := by
            simp [Int.add_emod]
          _ = (a % m + b % m) % m := rfl
      calc
        (a % m) + (b % m) = ((a % m + b % m) % m) := by
          rw [Int.emod_eq_of_lt hpos hlt]
        _ = (a + b) % m := by symm; exact hsum
    _ = (a + b) % m := rfl

end DistributionIntegersSpecialResidueClassesLemma
end HautevilleHouse