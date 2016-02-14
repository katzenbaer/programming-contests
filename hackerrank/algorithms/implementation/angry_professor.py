#!/bin/python

import sys


t = int(raw_input().strip())
for a0 in xrange(t):
    n,k = raw_input().strip().split(' ')
    n,k = [int(n),int(k)]
    a = map(int,raw_input().strip().split(' '))
    students_present = 0
    for arrival_time in a:
        if arrival_time <= 0:
            students_present += 1
    if students_present >= k:
        print "NO"
    else:
        print "YES"

