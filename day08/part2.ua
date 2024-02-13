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

&p "Table Before Classification"
&s .

# ╭─
# ╷     0   703   703
#     703     0 17575
#     676   703   703
#   17575 17575 17575
#                     ╯

⊃(⊚ =0 ◿26 ⊢ ⍉)(⊚ =25 ◿26 ⊢ ⍉) .

AIndexes ← # [0 2]
ZIndexes ← # [3]

&p "AIndexes"
&s AIndexes

&p "ZIndexes"
&s ZIndexes

⍜♭⊛

# ╭─
# ╷ 0 1 1
#   1 0 2
#   3 1 1
#   2 2 2
#         ╯

&p "Table After Classification"
&s .

⊃(≡⊢⊏AIndexes)(⊢⍉⊏ZIndexes) .

AMapIndexes ← # [0 3]
ZMapIndexes ← # [2]

&p "AMapIndexes"
&s AMapIndexes

&p "ZMapIndexes"
&s ZMapIndexes

⊏⍏.

# ╭─
# ╷ 0 1 1
#   1 0 2
#   2 2 2
#   3 1 1
#         ╯

Map ←

GetInstruction ← =@R ⊡ : Instructions ◿ ⧻ Instructions
GetInstructions ← ≡(GetInstruction °□)

⍢(
  ⊟□≡(⊡+1)GetInstructions:⊙:⊓(⊏ : Map °□)(+1.)°⊟
)(
  ¬ /× ∊:ZMapIndexes °□⊡0
) [□AMapIndexes 0]
