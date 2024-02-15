inp = open('input.txt').read()

DIRECTIONS = inp.split("\n\n")[0]
print(DIRECTIONS)

mapstr = inp.split("\n\n")[1]

map = {}
for line in mapstr.splitlines():
    lhs, rhs = line.split(" = ")
    map[lhs] = rhs[1:-1].split(", ")

poss = [k for k in map.keys() if k.endswith("A")]

chinese = []

for pos in poss:
    for count in range(100_000):
        pos = map[pos][DIRECTIONS[count % len(DIRECTIONS)] == "R"]
        if pos.endswith("Z"):
            chinese.append(count+1)
            break

print(chinese)

def lcm(a, b):
    import math
    return abs(a*b) // math.gcd(a, b)

from functools import reduce
print(reduce(lcm, chinese))


#count = 0
#while not all(pos.endswith("Z") for pos in poss):
#    for i, pos in enumerate(poss):
#        poss[i] = map[pos][DIRECTIONS[Count % len(DIRECTIONS)] == "R"]
#    count += 1
#
#print(count)
