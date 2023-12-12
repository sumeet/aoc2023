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
ParsedMapsTwo ← ≡(□ ≡(⊂⊂⊃⊃(RangeLo)(RangeHi)(Offset)♭) °□) ParsedMaps

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

# ([lower upper offset], haystack) => bool
Between ← ×⊃(;:≤,⊡0)(;:≥,⊡1)

# ([lower upper offset] haystacks) => bool
# /↥ ≡(Between SourceF) [79 92]

BetweenTwo ← ;:/↥ ≡(Between :,) ¤

# ([lower upper offset] [itemLo itemHi]) (adds offset)
FilterRangeWithOffset ← ([];;|⊂⊃(+⊃(/↧↥⊏0_1)(⊡2))(+⊃(/↥↧⊏0_1)(⊡2)))BetweenTwo , ,

# ([lower upper offset] [itemLo itemHi])
LowerBound ← ⊡0
UpperBound ← ⊡1

LowerPartOfInputRange ← ([];|¤⊂:↧⊓(-1 LowerBound)(⊃(UpperBound)(LowerBound)))<∩LowerBound,,
# LowerPartOfInputRange [98 99 0] [55 67]
# LowerPartOfInputRange [98 99 0] [55 99]

UpperPartOfInputRange ← ([];|¤⊂↥⊓(+1 UpperBound)(⊃(LowerBound)(UpperBound)))>∩UpperBound,,
# UpperPartOfInputRange [81 89 0] [82 100]
# UpperPartOfInputRange [81 89 0] [100 200]

FilterOutOfRange ← °¤ ⊂⊃(LowerPartOfInputRange)(UpperPartOfInputRange)

# FilterOutOfRange [2 15 0] [0 2]
# FilterOutOfRange [2 15 0] [0 100]
# FilterOutOfRange [2 15 0] [2 15]

FilterRangeFullOneIteration ← ?⊂?⊃(FilterOutOfRange)(FilterRangeWithOffset)

OneIteration ← ≡(°□) ▽ >0 ≡(⧻) . ⸮ /⊂ ? ⊠(?FilterRangeFullOneIteration?)

# OneIteration °□⊢ParsedMapsTwo SeedsTwo

≡(⊡0) ∧(OneIteration °□) ParsedMapsTwo SeedsTwo

# &s /↧ ≡(∧(MapToTwo ≡♭ ? °□) ParsedMaps) SeedsTwo
