Input ← &fras "input.txt"

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
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡3°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡4°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡5°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡6°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡7°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡8°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡9°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡10°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡11°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡12°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡13°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡14°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡15°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡16°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡17°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡18°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡19°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡20°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡21°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡22°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡23°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡24°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡25°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡26°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡27°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡28°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡29°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡30°□⊡0ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡31°□⊡0ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # soil-to-fertilizer
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡3°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡4°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡5°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡6°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡7°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡8°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡9°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡10°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡11°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡12°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡13°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡14°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡15°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡16°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡17°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡18°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡19°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡20°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡21°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡22°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡23°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡24°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡25°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡26°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡27°□⊡1ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡28°□⊡1ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # fertilizer-to-water
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡3°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡4°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡5°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡6°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡7°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡8°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡9°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡10°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡11°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡12°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡13°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡14°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡15°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡16°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡17°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡18°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡19°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡20°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡21°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡22°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡23°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡24°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡25°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡26°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡27°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡28°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡29°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡30°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡31°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡32°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡33°□⊡2ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡34°□⊡2ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # water-to-light
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡3°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡4°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡5°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡6°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡7°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡8°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡9°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡10°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡11°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡12°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡13°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡14°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡15°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡16°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡17°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡18°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡19°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡20°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡21°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡22°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡23°□⊡3ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡24°□⊡3ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # light-to-temperature
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡3°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡4°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡5°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡6°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡7°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡8°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡9°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡10°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡11°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡12°□⊡4ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡13°□⊡4ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # temperature-to-humidity
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡3°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡4°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡5°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡6°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡7°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡8°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡9°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡10°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡11°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡12°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡13°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡14°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡15°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡16°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡17°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡18°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡19°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡20°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡21°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡22°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡23°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡24°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡25°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡26°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡27°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡28°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡29°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡30°□⊡5ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡31°□⊡5ParsedMapsTwo) Results
Results ← FlippyFloppy Results
# # humidity-to-location
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡0°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡1°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡2°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡3°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡4°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡5°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡6°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡7°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡8°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡9°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡10°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡11°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡12°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡13°□⊡6ParsedMapsTwo) Results
Results ← RefoldUntilSeen!(TakeThroughOneMapSafe ⊡14°□⊡6ParsedMapsTwo) Results
Results ← FlippyFloppy Results

Results

/↧°□♭⊢
