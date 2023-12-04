# stolen from vap0rize, whoever this is, i found this somewhere and used it
# to learn the language and improve on my "original" solution
In ← &fras "sample.txt"

ValueOver! ← /+⊜(+⊃(×10⊢)(⊢⇌)▽±. ^1) ≠@\n.
SafeFind ← (⌕|▽:0⋅⧻) <∩⧻,,

# DigitsIn ← /+×⇡⧻.≡(⊐⌕)⊙¤
# DigitsIn ← /+×⇡⧻.≡(⊐⌕) ⸮ ⊙¤
DigitsIn ← ∵⌕ ⊙¤

Named ← {"_" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}

# &pf "Part 1: "
# &p ValueOver!(DigitsIn "0123456789") In

# &pf "Part 2: "
DigitsIn "0123456789" "e8ightwone2"
