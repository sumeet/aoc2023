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

Seeds ← SeedsTwo
InitResults ← ⊟ : □[] □

# repeats until new_value == initial_value
# (new_value) <- (initial_value)
RefoldUntilSeen! ← ; ⍢(⊙^1)(⊙(⊂:,)¬↥0/↥♭⌕:) []

# RefoldUntilNoChange!(TakeThroughOneMap ⊢ Map)

Results ← InitResults Seeds
FirstSeedFromResults ← ⊢°□⊢
JoinBackWithResults ← ⊟⊙(□⊂°□)□⊂°□⊙:⍜(°□)(↘1)°⊟:

TakeThroughOneMap ← JoinBackWithResults ⊙: InnerAndOuter ⊙(FirstSeedFromResults.)
TakeThroughOneMapSafe ← (TakeThroughOneMap|;)=0⧻⊢,

FlippyFloppy ← InitResults ⊂∩(°□)°⊟

# seed-to-soil
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡0ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # soil-to-fertilizer
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡1ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # fertilizer-to-water
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡3°□⊡2ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # water-to-light
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡3ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # light-to-temperature
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡4ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # temperature-to-humidity
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡5ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # humidity-to-location
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡6ParsedMapsTwo) Results
Results ← FlippyFloppy Results

Results

/↧°□♭⊢
