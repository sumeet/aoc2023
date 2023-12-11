Input ← &fras "sample.txt"

BlankLineMask ← ¬⌕ "\n\n" Input

⊜□ BlankLineMask Input

≡(□ ⋕ regex "\\d+")

⊃(♭≡(°□♭) ↙ 1)(↘ 1)
Seeds ←
UnparsedMaps ←

ParsedMaps ← ≡(□ ⊜∘ /⊂ ≡(⊂⊂ . .) +1 ⇡ ÷3 ⧻ . °□) UnparsedMaps

RangeLo ← ⊡1
RangeHi ← -1 +⊃(⊡1)(⊡ 2)
Dest ← ⊡0
Offset ← - ⊃(RangeLo)(Dest)

# (Map, Input) -> Output
MapTo ← ⍣(⊙;⊢)(;:;) ▽ ≠¯1 . ≡((¯1;;|+ Offset) ×⊃(≥ : RangeHi)(≤ : RangeLo) ,,) ⊙.

&pf "Part 1: "
&s /↧ ≡(∧(MapTo ≡♭ °□) ParsedMaps) Seeds

&pf "Part 2: "

# better repr of parsed maps, should've used it for part 1 oh well
ParsedMapsTwo ← ≡(□ ≡(⊂⊃(RangeLo)(RangeHi)♭) °□) ParsedMaps

SeedsTwo ← ⊜∘ /⊂ ≡(⊂.) +1 ⇡ ÷2 ⧻ . Seeds
SeedsTwo ← ≡(⊂⊙+.⊙(-1)°⊟)SeedsTwo

# ParsedMapsTwo
# SeedsTwo
Seed ← [79 92]
SourceA ← [50 97]    # [[79 92]]
SourceB ← [50 78]    # [[]]
SourceC ← [50 79]    # [[79 79]]
SourceD ← [92 100]   # [[92 92]]
SourceE ← [84 93]    # [[84 92]]
SourceF ← [104 3290] # [[]]

# ([lower upper], haystack) => bool
Between ← ×⊃(;:≤,⊢)(;:≥,⊢⇌)

# ([lower upper] haystacks) => bool
# /↥ ≡(Between SourceF) [79 92]

BetweenTwo ← ;:/↥ ≡(Between :,) ¤

# ([lower upper] [itemLo itemHi])
FilterRange ← ([];;|⊂⊃(/↧↥)(/↥↧))BetweenTwo , ,

OneIteration ← ≡(°□) ▽ >0 ≡(⧻) . /⊂ ⊠(□ FilterRange)

# OneIteration °□⊢ParsedMapsTwo SeedsTwo

∧(⸮ OneIteration ? °□) ParsedMapsTwo SeedsTwo

# &s /↧ ≡(∧(MapToTwo ≡♭ ? °□) ParsedMaps) SeedsTwo
