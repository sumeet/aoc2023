Split! ← &i "../lib.ua" "Split!"

&fras "input.txt"

# "10 13 16 21 30 45\n1 3 6 10 15 21\n0 3 6 9 12 15"

Split!(□) @\n

# [⌜0 3 6 9 12 15⌟ ⌜1 3 6 10 15 21⌟ ⌜10 13 16 21 30 45⌟]

≡(Split!(⋕) @\s °□)

# ╭─                   
# ╷  0  3  6  9 12 15  
#    1  3  6 10 15 21  
#   10 13 16 21 30 45  
#                     ╯

InputTable ←

LastRow ← °□ ⊢⇌
LastRowIsAllZeros ← =0 /+ LastRow

CalcDiff ← ≡(-°⊟) ◫2
AddDiffToLastRow ← ⊂ :□ CalcDiff LastRow .

≡(
  ⇌ □⍢(AddDiffToLastRow)(¬LastRowIsAllZeros) ¤□
) InputTable

# [
#  ⟦⟦0 0 0 0⟧ ⟦3 3 3 3 3⟧ ⟦0 3 6 9 12 15⟧⟧
#  ⟦⟦0 0 0⟧ ⟦1 1 1 1⟧ ⟦2 3 4 5 6⟧ ⟦1 3 6 10 15 21⟧⟧
#  ⟦⟦0 0⟧ ⟦2 2 2⟧ ⟦0 2 4 6⟧ ⟦3 3 5 9 15⟧ ⟦10 13 16 21 30 45⟧⟧]
# ]

≡(/+ ≡(⊢⇌°□)°□) .

# [18 28 68]

&p "Part 1:"

&p /+

# 114

&p "Part 2:"

&p /+ ≡(/- ≡(⊢°□)°□)
