Split ← ⊜∘≠,
Input ← &fras "input.txt"
Lines ← Split @\n Input

&pf "Part 1: "

DigitsMask ← ∊ Lines "0123456789"
PartsMask ← ¬ ∊ Lines "0123456789."

TheEightDirections ← [[¯1 ¯1] [¯1 0] [¯1 1] [0 ¯1] [0 1] [1 ¯1] [1 0] [1 1]]
PartsNeighborsMask ← /↥ ≡(↻ : PartsMask) TheEightDirections
Parse ← ⍣(⋕)(0;;)
ParseRepeat ← ▽⊃(⧻)(Parse)
ParsedNumsGrid ← ≡(°□ ⊐/⊂ ≡(□ParseRepeat) ⊜□) +1 DigitsMask Lines
UniquifyNumClusters ← ⊜(⊢).♭
WantNumbers ← UniquifyNumClusters × PartsNeighborsMask ParsedNumsGrid

&s /+ WantNumbers

&pf "Part 2: "

StarsMask ← = @* Lines
StarsNeighborsMask ← /↥ ≡(↻ : StarsMask) TheEightDirections

StarsGroups ← × ↯ ⊃(△)(⇡/×△) . StarsMask
StarsGroupsNeighbors ← /↥ ≡(↻ : StarsGroups) TheEightDirections

# group numbers by stars but the dimension is still messed up
# need to subtract 1, because group throws away negative numbers,
# not ones
⊕□ -1♭StarsGroupsNeighbors ♭ParsedNumsGrid
# dimension is super messed up and a bunch of empty arrays

# deduplicate
≡(⊝)

# get rid of zeros
≡(□ ▽ ≠0. °□)

# only keeps arrays of length 2 (gears connected by stars)
≡°□ ▽ ≡(=2⧻) .

/+ ≡(/×)
