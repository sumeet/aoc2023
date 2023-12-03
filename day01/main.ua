Split ← ⊜□≠,
FirstNum ← parse ⊔ ⊡ 0 regex "\\d" ⊔
LastNum ← parse ⊔ ⊡ - 1 ⧻ . regex "\\d" ⊔
Input ← &fras "input.txt"
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

# Sort ♭ ∵⊔ ▽ >0∵⧻ . ∵(□⊚⌕⊔: "eighttwothree") NumberWords

# ⊢ ≡(⊂⊃(⊢⊔⊡0)(⊡1)) Sort ▽ >0 ≡(⧻⊡0) . ≡(⊂ ⊃(□⊚⌕⊔: "eightwothree" ⊡1)(⊡0)) DigitsWithWords

FindReplacement ← ↘ 1 ⊢ ≡(⊂⊃(⊢⊔⊡0)(⊏ 1_2)) Sort ▽ >0 ≡(⧻⊡0) . ≡(⊂⊂ ⊃⊃(□⊚⌕⊔: ⊔ : ⊙(⊡1) ⊡1⊔⊡0 .)(⊡0⊔⊡0)(⊡1⊔⊡0)) ≡⊂ ≡□ DigitsWithWords □

# Replace (from haystack to)
DoOneReplacementThrows ← Replace ⊙: ⊃(⊔⊡ 1)(⊔⊡ 0) FindReplacement .
DoOneReplacement ← ⍣DoOneReplacementThrows(;:)

DoReplacements ← ⍥(DoOneReplacement)10

&pf "Part 2: "
# PartOne ⊐∵ReplaceNumberWords Lines
&s PartOne ≡(□DoReplacements⊔) Lines
