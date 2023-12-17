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

# ([lower upper offset], needle) => bool
Between ← ×⊃(;:≤,⊡0)(;:≥,⊡1)

IsCompletelyInRange ← ;:/× ≡(Between ⊙.) ¤

# ([lower upper offset] [itemLo itemHi])
LowerBound ← ⊡0
UpperBound ← ⊡1
Offset ← ⊡2

LowerOutOfInputRange ← ([];|¤⊂:↧⊓(-1 LowerBound)(⊃(UpperBound)(LowerBound)))<∩LowerBound,,
UpperOutOfInputRange ← ([];|¤⊂↥⊓(+1 UpperBound)(⊃(LowerBound)(UpperBound)))>∩UpperBound,,

FilterOutOfRange ← ⊂⊃(LowerOutOfInputRange)(UpperOutOfInputRange)

IsRangeValid ← ≥ °⊟
MiddlePartOfRange ← ([];|¤) IsRangeValid . ⊟⊃(↥∩LowerBound)(↧∩UpperBound)

FilterInnerWithOffset ← +⊃(;:Offset)(MiddlePartOfRange)

InnerAndOuter ← ⊃(FilterOutOfRange)(FilterInnerWithOffset)

Map ← [98_99_1000000 50_97_9000000]
Seeds ← [0_100 200_300]
InitResults ← ⊟ : □[] □

# repeats until new_value == initial_value
# (new_value) <- (initial_value)
RefoldUntilSeen! ← ; ⍢(⊙^1)(⊙(⊂:,)¬↥0/↥♭⌕:) []

# RefoldUntilNoChange!(TakeThroughOneMap ⊢ Map)

Results ← InitResults Seeds
FirstSeedFromResults ← ⊢°□⊢
JoinBackWithResults ← ⊟⊙(□⊂°□)□⊂°□⊙:⍜(°□)(↘1)°⊟:

TakeThroughOneMap ← JoinBackWithResults ⊙: InnerAndOuter ⊙(FirstSeedFromResults.)

RefoldUntilSeen!(TakeThroughOneMap ⊢Map) Results

# IsCompletelyInRange [98 99 0] [98 99]

# FilterOutOfRange [2 15 0] [0 2]
# FilterOutOfRange [2 15 0] [0 100]
# FilterOutOfRange [2 15 0] [2 15]

# FilterRangeFullOneIteration ← ⊂⊃(FilterOutOfRange)(FilterRangeWithOffset)

# OneIteration ← ≡(°□) ▽ >0 ≡(⧻) . /⊂ ⊠(FilterRangeFullOneIteration)

# FilterRangeWithOffset ⊡1Map Seed

# FilterMapWithOffset ← ≡(□FilterRangeWithOffset) ⊙¤
# FilterMapWithOffset Map Seed

# OneIteration °□⊢ParsedMapsTwo SeedsTwo

# ≡(⊡0) ∧(OneIteration °□) ParsedMapsTwo SeedsTwo

# &s /↧ ≡(∧(MapToTwo ≡♭ ? °□) ParsedMaps) SeedsTwo
