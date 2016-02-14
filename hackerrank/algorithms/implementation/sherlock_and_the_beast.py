#!/bin/python

import sys

t = int(raw_input().strip())
for a0 in xrange(t):
    n = int(raw_input().strip())
    number = None
    for i in xrange(0, n + 1, 5):
        fives = (n - i)
        threes = i
        if fives % 3 == 0 and threes % 5 == 0 and fives + threes == n:
            number = ''.join(['5'] * fives + ['3'] * threes)
            break
        
    if not number:
        print(-1)
    else:
        print number

