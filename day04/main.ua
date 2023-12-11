&fras "sample.txt"

&pf "Part 1: "

# "Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53\nCard 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19\nCard 3:  1 21 53 59 44 | 69 82 63 72 16 21 14  1\nCard 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83\nCard 5: 87 83 26 28 32 | 88 30 70 12 93 22 82 36\nCard 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11\n"

Split! ← ⊜^1≠,
Split!(□) @\n

# [⌜Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53⌟ ⌜Card 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19⌟ ⌜Card 3:  1 21 53 59 44 | 69 82 63 72 16 21 14  1⌟ ⌜Card 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83⌟ ⌜Card 5: 87 83 26 28 32 | 88 30 70 12 93 22 82 36⌟ ⌜Card 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11⌟]

≡(Split!(□) @| °□)

# ╭─
# ╷ ⌜Card 1: 41 48 83 86 17 ⌟ ⌜ 83 86  6 31 17  9 48 53⌟
#   ⌜Card 2: 13 32 20 16 61 ⌟ ⌜ 61 30 68 82 17 32 24 19⌟

∵(⊢ ⇌ Split!(□) @: °□)

# ╭─
# ╷ ⌜ 41 48 83 86 17 ⌟ ⌜ 83 86  6 31 17  9 48 53⌟
#   ⌜ 13 32 20 16 61 ⌟ ⌜ 61 30 68 82 17 32 24 19⌟

⬚0∵(♭ ⋕ regex "\\d+" °□)

# │ ╭─
# ├╴╷ 41 48 83 86 17  0  0  0
# │ ╷ 83 86  6 31 17  9 48 53
# │
# │   13 32 20 16 61  0  0  0
# │   61 30 68 82 17 32 24 19
# │

Intersect ← ▽∊,

≡(⧻ Intersect °⊟)

# [4 2 2 1 0 0]
NumMatchesPerCard ←

▽≠0.NumMatchesPerCard

# [4 2 2 1] (Numbers of matches)

CalcScore ← ⁿ:2 -1
CalcScore

# [8 2 2 1]

&s /+

# 13

&pf "Part 2: "

CountsAndMatches ← ∵(⊂ [1]) NumMatchesPerCard
Range ← ⇡⧻ CountsAndMatches
RepeatN ← ;:⍥(⊂,) : []

GetNumMatchesForRow ← ⊡1⊡
GetNumCardsForRow ← ⊡0⊡

Index ← ⊢Range

NumMatches ← GetNumMatchesForRow Index CountsAndMatches
NumCards ← GetNumCardsForRow Index CountsAndMatches

# ⊂ RepeatN +1Index 0 RepeatN NumMatches NumCards
# ⊂ RepeatN +1Index 0 RepeatN :°⊟ ⊡Index CountsAndMatches
⊂⊃(RepeatN +1: 0)(RepeatN :°⊟ ⊡) Index CountsAndMatches

⬚0+ CountsAndMatches
