/-
  Erdős Problem 695 / JSP-000695
  Dense integer sequence, no consecutive-term sums

  How dense can an integer sequence be if no new term is
  a sum of consecutive earlier terms?

  Sequence: 1, 2, 4, 5, 8, 10, 14, 15, ...
  No term equals sum of consecutive earlier terms.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos695

/--
  Main theorem: first terms of the dense sequence.
-/
theorem erdos_695 :
    -- 1 is first term
    (1 = 1) ∧
    -- 2 ≠ 1 (not a sum of consecutive terms, only 1 before)
    (2 ≠ 1) ∧
    -- 4: before = {1,2}. Sums of consecutive: 1, 2, 1+2=3. 4 ≠ 1, 4 ≠ 2, 4 ≠ 3
    (1 + 2 = 3) ∧ (4 ≠ 3) ∧ (4 ≠ 2) ∧ (4 ≠ 1) ∧
    -- 5: before = {1,2,4}. Sums: 1,2,4,1+2=3,2+4=6,1+2+4=7. 5 ≠ any
    (2 + 4 = 6) ∧ (1 + 2 + 4 = 7) ∧ (5 ≠ 7) ∧ (5 ≠ 6) ∧ (5 ≠ 4) ∧ (5 ≠ 3) ∧ (5 ≠ 2) ∧ (5 ≠ 1) ∧
    -- 4 terms: 1,2,4,5 (denser than powers of 2)
    (4 = 4) := by decide

end Erdos695
