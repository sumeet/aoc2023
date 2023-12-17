Split! ← ⊜^1≠,
&fras "sample.txt"

# "Time:      7  15   30\nDistance:  9  40  200"

Split!∘ @\n

# ╭─                         
# ╷ "Time:      7  15   30"  
#   "Distance:  9  40  200"  
#                           ╯

⍉≡(°¤ ≡⋕ regex "\\d+")

# ╭─        
# ╷  7   9  
#   15  40  
#   30 200  
#          ╯

≡(/+ > : ⊃(≡(×-,):⇡.⊡0)(⊡1))

# [4 8 9]

/×

# 288
