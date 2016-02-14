#!/bin/python

import sys

t = int(raw_input().strip())
for a0 in xrange(t):
    n = int(raw_input().strip())
    summer_cycles = n/2
    spring_cycles = n - summer_cycles
    height = 1
    while summer_cycles > 0 or spring_cycles > 0:
        height *= 2 if spring_cycles > 0 else 1
        height += 1 if summer_cycles > 0 else 0
        spring_cycles -= 1
        summer_cycles -= 1
    print(height)

