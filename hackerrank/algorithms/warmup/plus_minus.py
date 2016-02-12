#!/bin/python

import sys


n = int(raw_input().strip())
arr = map(int,raw_input().strip().split(' '))

pos_count = 0
neg_count = 0
zer_count = 0
for i in arr:
  if i < 0:
    neg_count += 1
  elif i > 0:
    pos_count += 1
  else:
    zer_count += 1

print(pos_count/float(n))
print(neg_count/float(n))
print(zer_count/float(n))

