Split! ← &i "../lib.ua" "Split!"

Split!(□) @\n &fras "sample.txt"

⊃(°□°¤↙1)(↘1)

Instructions ← # "RL"

≡(≡°□°¤ regex "\\w+")

# # ╭─
# # ╷ "AAA"
# # ╷ "BBB"
# #   "CCC"

# #   "BBB"
# #   "DDD"
# #   "EEE"

≡(≡(/(+×26) -@A))

# # ╭─
# # ╷     0   703  1406
# #     703  2109  2812
# #    1406 17575  4218
# #    2109  2109  2109
# #    2812  2812  2812
# #    4218  4218  4218
# #   17575 17575 17575
# #                     ╯

⊃(°¤⊚ =0 ⊢ ⍉)(°¤⊚ =17575 ⊢ ⍉) .

AIndex ← # 0
ZIndex ← # 6

⍜♭⊛

# # # │ ╭─
# # # ├╴╷ 0 1 2
# # # │   1 3 4
# # # │   2 5 6
# # # │   3 3 3
# # # │   4 4 4
# # # │   6 6 6
# # # │   5 5 5
# # # │         ╯

⊃(⊢⊡AIndex)(⊢⊡ZIndex) .

AValue ← # 0
ZValue ← # 5

⊏⍏.

# # # ╭─
# # # ╷ 0 1 2
# # #   1 3 4
# # #   2 5 6
# # #   3 3 3
# # #   4 4 4
# # #   5 5 5
# # #   6 6 6
# # #         ╯

Map ←

GetInstruction ← =@R ⊡ : Instructions ◿ ⧻ Instructions

⍢(⊟⊡+1GetInstruction:⊙:⊓(⊡ : Map)(+1.)°⊟)(≠ZValue⊡0) AValue_0

# [5 2]

⊡1

# 2
