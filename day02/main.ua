Split ← ⊜□≠,
Input ← &fras "input.txt"
Lines ← Split @\n Input

Reds ← ≡⊐parse ⊔⊡1⍉regex "(\\d+) red"
Greens ← ≡⊐parse ⊔⊡1⍉regex "(\\d+) green"
Blues ← ≡⊐parse ⊔⊡1⍉regex "(\\d+) blue"

&pf "Part 1: "

TargetRGB ← [12 13 14]
ArrayComp! ← /↧ ^2
IsGameStringPossible ← ArrayComp!(≤)TargetRGB ⊂⊂⊃⊃(/↥Reds)(/↥Greens)(/↥Blues)
GetIDsForOnes ← × +1⇡⧻ .

&s /+ GetIDsForOnes ≡⊐IsGameStringPossible Lines

&pf "Part 2: "

GamePower ← /× ⊂⊂⊃⊃(/↥Reds)(/↥Greens)(/↥Blues)

/+ ≡⊐GamePower Lines
