Split ← ⊜□≠,
FirstNum ← parse ⊔ ⊡ 0 regex "\\d" ⊔
LastNum ← parse ⊔ ⊡ - 1 ⧻ . regex "\\d" ⊔
Input ← &fras "sample.txt"
Lines ← Split @\n Input
SplitAtIndex ← ⊃↙↘

# PartOne ← /+ + ∵LastNum Lines ×10 ∵FirstNum
PartOne ← /+ ⸮ + ⊃(∵LastNum)(∵(×10 FirstNum))
&pf "Part 1: "
&s PartOne Lines

# Replace (from haystack to)
ReplaceThrows ← ⊂ ⊙(⊂:) ⊙(↘:) SplitAtIndex ⊙: ⊢⊚ ⊃⌕⧻⊙.
Replace ← ⍣ReplaceThrows(;:;:;)

NumberWords ← Split @\s "zero one two three four five six seven eight nine"

NumbersWithWords ← ⍉ ⊟∵(□⍘parse)⇡ ⧻ . NumberWords
# &s NumbersWithWords

ReplaceNumberWords ← ∧(Replace ⊙(:) ⊃(⊔ ⊡ 1)(⊔ ⊡ 0)) NumbersWithWords

Input ← &fras "sample2.txt"
Lines ← Split @\n Input
&pf "Part 2: "
PartOne ⊐∵ReplaceNumberWords Lines
