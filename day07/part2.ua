Split! ← &i "../lib.ua" "Split!"

Split!(□) @\n &fras "input.txt"

# [⌜32T3K 765⌟ ⌜T55J5 684⌟ ⌜KK677 28⌟ ⌜KTJJT 220⌟ ⌜QQQJA 483⌟]

≡(Split!(□)@\s°□)

# ╭─               
# ╷ ⌜32T3K⌟ ⌜765⌟  
#   ⌜T55J5⌟ ⌜684⌟  
#   ⌜KK677⌟  ⌜28⌟  
#   ⌜KTJJT⌟ ⌜220⌟  
#   ⌜QQQJA⌟ ⌜483⌟  
#                 ╯

⍜(⊡1⍉)(⋕)

# ╭─              
# ╷⌜32T3K⌟ □765  
#  ⌜T55J5⌟ □684  
#  ⌜KK677⌟  □28  
#  ⌜KTJJT⌟ □220  
#  ⌜QQQJA⌟ □483  
#               ╯

Cards ← "J23456789TQKA"
RankCard ← ⊢♭ ⊗ ¤ : Cards

⍜(⊡0⍉)(≡(□≡(RankCard)°□)°□)

# ╭─                      
# ╷   ⟦1 0 8 1 11⟧  □765  
#     ⟦8 3 3 9 3⟧   □684  
#    ⟦11 11 4 5 5⟧   □28  
#     ⟦11 8 9 9 8⟧  □220  
#   ⟦10 10 10 9 12⟧ □483  
#                        ╯

FiveOfAKind ← ∊ 5 ⊜(⧻)+1⊛ . ⊏⍏.
FourOfAKind ← ∊ 4 ⊜(⧻)+1⊛ . ⊏⍏.
FullHouse ← ≍ 2_3 ⊏⍏. ⊜(⧻)+1⊛ . ⊏⍏.
ThreeOfAKind ← ≍ 1_1_3 ⊏⍏. ⊜(⧻)+1⊛ . ⊏⍏.
TwoPair ← ≍ 1_2_2 ⊏⍏. ⊜(⧻)+1⊛ . ⊏⍏.
OnePair ← ≍ 1_1_1_2 ⊏⍏. ⊜(⧻)+1⊛ . ⊏⍏.
HighCard ← ≍ 1_1_1_1_1 ⊏⍏. ⊜(⧻)+1⊛ . ⊏⍏.

RankOne ← ⊗1 ⊂⊂⊂⊂⊂⊂⊃⊃⊃⊃⊃⊃(HighCard)(OnePair)(TwoPair)(ThreeOfAKind)(FullHouse)(FourOfAKind)(FiveOfAKind)

AllCombos ← (
  ≡(□(¤∘|+1⇡⧻Cards)≍0.)

  ⊃⊃⊃⊃(⊡0)(⊡1)(⊡2)(⊡3)(⊡4)

  /⊂/⊂/⊂ ⊠(⊠(⊂)∩°□)
  /⊂⊠(⊂)⊙°□
  /⊂⊠(⊂)⊙°□
  /⊂⊠(⊂)⊙°□
)

Rank ← /↥ ≡(RankOne)AllCombos

⊕(□) -/↧. ≡(Rank °□⊢) .

∵(□≡(∵°□⊂°□°⊟)°□)

# # Now Sort
≡(⍜°□(⊏⍏.))

# filter empty
▽ ↧1≡(⧻) .
# ∵(¬0≍⧻) .

/(⊂°□∩(°□))

≡(↘ 5)

°¤ /+ × +1⇡ ⧻ .
