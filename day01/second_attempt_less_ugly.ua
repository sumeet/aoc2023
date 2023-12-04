Input ← &fras "input.txt"
Split ← ⊜□≠,

&pf "Part 1: "

Digits ← ≡⍘parse⇡10
Last ← ⊡ - 1 ⧻ .
CombFirstAndLast ← +⊃(× 10 ⊢)(Last) ▽>0.
FindNumPartOne ← CombFirstAndLast /+ × ⇡⧻. ≡⌕ Digits ¤

&s /+ ≡⊐FindNumPartOne Split @\n Input

&pf "Part 2: "

DigitWords ← {"zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
SafeFind ← (⌕|▽:0⋅⧻) <∩⧻ ,,
FindNumPartTwo ← CombFirstAndLast /+ + ⊃(× ⇡⧻. ≡⊐SafeFind DigitWords)(× ⇡⧻. ≡⊐⌕ Digits) ¤

/+ ≡⊐(FindNumPartTwo) Split @\n Input
