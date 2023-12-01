Split ← ⊜□≠,
Input ← &fras "input.txt"
FirstNum ← parse ⊔ ⊡ 0 regex "\\d" ⊔
LastNum ← parse ⊔ ⊡ - 1 ⧻ . regex "\\d" ⊔

Lines ← Split @\n Input
/+ + ∵LastNum Lines ×10 ∵FirstNum Lines
