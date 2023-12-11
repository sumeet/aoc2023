Input ← &fras "sample.txt"

BlankLineMask ← ¬⌕ "\n\n" Input

⊜□ BlankLineMask Input

≡(□ ⋕ regex "\\d+")

⊃(♭≡(°□♭) ↙ 1)(↘ 1)
Seeds ←
UnparsedMaps ←

ParsedMaps ← ≡(□ ⊜∘ /⊂ ≡(⊂⊂ . .) +1 ⇡ ÷3 ⧻ . °□) UnparsedMaps

FirstSeed ← ⊢ Seeds

FirstParsedMap ← ≡(♭) °□ ⊢ ParsedMaps

RangeLo ← ⊡1
RangeHi ← -1 +⊃(⊡1)(⊡ 2)
Dest ← ⊡0
Offset ← - ⊃(⸮RangeLo)(Dest)

FirstSeed ← 79

≡((¯1;|+FirstSeed Offset) ×⊃(≥FirstSeed RangeHi)(≤FirstSeed RangeLo) .) FirstParsedMap
