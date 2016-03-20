import math

t = int(raw_input().strip())
for _ in xrange(t):
    low, high = map(int, raw_input().strip().split(' '))
    low_root = int(math.floor(math.sqrt(low)))
    high_root = int(math.floor(math.sqrt(high)))
    res = 0
    for i in xrange(low_root, high_root + 1):
        sq = i * i
        res += 1 if sq >= low and sq <= high else 0
    print res
        
