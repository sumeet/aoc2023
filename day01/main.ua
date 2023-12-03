Split ← ⊜□≠,
FirstNum ← parse ⊔ ⊡ 0 regex "\\d" ⊔
LastNum ← parse ⊔ ⊡ - 1 ⧻ . regex "\\d" ⊔
Input ← &fras "sample.txt"
Lines ← Split @\n Input
SplitAtIndex ← ⊃↙↘
Sort ← ⊏⍏.

# PartOne ← /+ + ∵LastNum Lines ×10 ∵FirstNum
PartOne ← /+ + ⊃(∵LastNum)(≡(×10 FirstNum))
&pf "Part 1: "
&s PartOne Lines

# Replace (from haystack to)
ReplaceThrows ← ⊂ ⊙(⊂:) ⊙(↘:) SplitAtIndex ⊙: ⊢⊚ ⊃⌕⧻⊙.
Replace ← ⍣ReplaceThrows(;:;:;)

NumberWords ← Split @\s "zero one two three four five six seven eight nine"

DigitsWithWords ← ⍉ ⊟∵(□⍘parse)⇡ ⧻ . NumberWords
# &s DigitsWithWords

ReplaceNumberWords ← ∧(Replace ⊙(:) ⊃(⊔ ⊡ 1)(⊔ ⊡ 0)) DigitsWithWords

Input ← &fras "sample2.txt"
Lines ← Split @\n Input

# Sort ♭ ∵⊔ ▽ >0∵⧻ . ∵(□⊚⌕⊔: "eighttwothree") NumberWords

# ⊢ ≡(⊂⊃(⊢⊔⊡0)(⊡1)) Sort ▽ >0 ≡(⧻⊡0) . ≡(⊂ ⊃(□⊚⌕⊔: "eightwothree" ⊡1)(⊡0)) DigitsWithWords

⊢ ≡(⊂⊃(⊢⊔⊡0)(⊡1)) Sort ▽ >0 ≡(⧻⊡0) . ≡(⊂ ⊃(□⊚⌕⊔: "eightwothree" ⊡1)(⊡0)) DigitsWithWords

# &pf "Part 2: "
# PartOne ⊐∵ReplaceNumberWords Lines
