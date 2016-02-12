#!/bin/python

import sys

time = raw_input().strip()

am_or_pm = time[-2:]
components = map(int, time[:-2].split(':'))

if am_or_pm == 'PM' and components[0] != 12:
  components[0] += 12
  components[0] %= 24
elif am_or_pm == 'AM' and components[0] == 12:
  components[0] = 0

print(':'.join(map(lambda x: '%02d' % x, components)))

