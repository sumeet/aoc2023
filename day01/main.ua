Split ← ⊜□≠,
Input ← &fras "sample.txt"
FirstNum ← parse ⊔ ⊡ 0 regex "\\d" ⊔
LastNum ← parse ⊔ ⊡ - 1 ⧻ . regex "\\d" ⊔
Lines ← Split @\n Input
SplitAtIndex ← ⊃↙↘

# &pf "Part 1: "
# &s /+ + ∵LastNum Lines ×10 ∵FirstNum Lines

# &pf "Part 2: "
# &s NumberWords

# Replace (from haystack to)
ReplaceThrows ← ⊂ ⊙(⊂:) ⊙(↘:) SplitAtIndex ⊙: ⊢⊚ ⊃⌕⧻⊙.
Replace ← ⍣ReplaceThrows(;:;:;)

NumberWords ← Split @\s "zero one two three four five six seven eight nine"

NumbersWithWords ← ⍉ ⊟∵(□⍘parse)⇡ ⧻ . NumberWords
# &s NumbersWithWords
ReplaceNumberWords ← ∧(Replace ⊙(:) ⊃(⊔ ⊡ 1)(⊔ ⊡ 0)) NumbersWithWords

PartTwoLines ← ∵ReplaceNumberWords Lines
PartTwoLines
