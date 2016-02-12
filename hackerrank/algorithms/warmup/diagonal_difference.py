#!/bin/python

import sys

n = int(raw_input().strip())
a = []
for a_i in xrange(n):
   a_temp = map(int,raw_input().strip().split(' '))
   a.append(a_temp)

primary_sum = sum([a[i][i] for i in xrange(n)])
secondary_sum = sum([a[n - i - 1][i] for i in xrange(n)])

print(abs(primary_sum - secondary_sum))

