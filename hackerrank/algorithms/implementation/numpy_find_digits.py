#!/bin/python

import sys
import numpy as np

t = int(raw_input().strip())
for a0 in xrange(t):
    n_str = raw_input().strip()
    n = int(n_str)
    print sum(n % np.array(filter(lambda x: x > 0, map(int, n_str))) == 0)

