Split! ← &i "../lib.ua" "Split!"

Split!(□) @\n &fras "input.txt"

⊃(°□°¤↙1)(↘1)

Instructions ← # "RL"

≡(≡°□°¤ regex "\\w+")

# ╭─
# ╷ "AAA"
# ╷ "BBB"
#   "CCC"

#   "BBB"
#   "DDD"
#   "EEE"

≡(≡(/(+×26) -@A))

# ╭─
# ╷     0   703   703
#     703     0 17575
#     676   703   703
#   17575 17575 17575
#                     ╯

⊃(⊚ =0 ◿26 ⊢ ⍉)(⊚ =25 ◿26 ⊢ ⍉) .

AIndexes ← # [0 2]
ZIndexes ← # [3]

⍜♭⊛

# ╭─
# ╷ 0 1 1
#   1 0 2
#   3 1 1
#   2 2 2
#         ╯

⊃(≡⊢⊏AIndexes)(⊢⍉⊏ZIndexes) .

AMapIndexes ← # [0 3]
ZMapIndexes ← # [2]

⊏⍏.

# ╭─
# ╷ 0 1 1
#   1 0 2
#   2 2 2
#   3 1 1
#         ╯

Map ←

GetInstruction ← =@R ⊡ : Instructions ◿ ⧻ Instructions

IterateUntilEndsWithZ ← ⍢(
  ⊟⊡+1GetInstruction:⊙:⊓(⊡ : Map)(+1.)°⊟
)(
  =0 /× ∊:ZMapIndexes °□⊡0
) ⊂ : 0

≡(⊡ 1 IterateUntilEndsWithZ) AMapIndexes

# [21409 14363 15989 16531 19241 19783]

FirstZCounts ←

GCD ← ◌⍢⊃◿∘±
LCM ← ÷⊃(GCD)(⌵×)

/LCM FirstZCounts

# 21165830176709
