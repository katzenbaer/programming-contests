#!/bin/python

import sys

t = int(raw_input().strip())
for a0 in xrange(t):
    n_str = raw_input().strip()
    n = int(n_str)
    divis_sum = 0
    for i in map(int, n_str):
        if i == 0: continue
        divis_sum += 1 if n % i == 0 else 0
    print divis_sum

